#!/usr/bin/env python
'''
Classification: ???
Python Compatability: 2.7
Name: DRED Net Controller
Version: 1.0.0
Version Date: 9/25/2018
Created By: MSgt William D. Baez; SSgt John McKnight
Organization: 71st Intelligence Sq., Wright-Patterson AFB, OH; 11th Special Ops Intelligence Squardon, Hurlburt Field, FL
Phone Number: (937) 522-6664; (850) 884-3336
'''
# IMPORT MODULES
#from accessHost import connectHost
import csv
import os
#import paramiko
from random import randint
import select
import subprocess
import sys
from threading import Thread
import time
from Tkinter import *
import tkFileDialog as filedialog
		
root = Tk()

# GUI SETTINGS
root.title('DRED NETWORK v1.0.0')
root.wm_attributes("-topmost", 1)
root.attributes("-toolwindow", 1)
buttonFGcolor = '#000000'
buttonBGcolor = '#c7c7c7'
windowBGcolor = '#ffffff'
root.configure(background=windowBGcolor)
root.resizable(width=FALSE, height=FALSE)
w = 1000
h = 600

# CENTER THE GUI
x = (root.winfo_screenwidth() // 2) - (w // 2)
y = (root.winfo_screenheight() // 2) - (h // 2)
root.geometry('{}x{}+{}+{}'.format(w, h, x, y))

# GLOBAL SCENARIO-RELATED VARIABLES
SCENARIO_FILE = None
SCENARIO_RUNNING = FALSE
SCENARIO_ROW_COUNT = 0

# LOAD A SCENARIO (.CSV ONLY)
def LoadScenario():
	global SCENARIO_FILE
	SCENARIO_FILE = filedialog.askopenfilename(initialdir = "/",title = "Load a Scenario",filetypes = (("CSV Files","*.csv"),))
	
	# CLOSE AN OPENED (AND STOP A RUNNING) OPEN_Net.py
	global SCENARIO_RUNNING
	if SCENARIO_RUNNING == TRUE:
		SCENARIO_RUNNING = FALSE
	
	# SHOW FILE NAME AND TOGGLE START/STOP BUTTONS
	if os.path.isfile(SCENARIO_FILE):
		loadFile.configure(text=os.path.split(SCENARIO_FILE)[1])
		startButton.configure(state=NORMAL)
		stopButton.configure(state=DISABLED)
		
		# PRINT CSV'S ROW COUNT
		global SCENARIO_ROW_COUNT
		with open(SCENARIO_FILE,"r") as csvfile:
			SCENARIO_ROW_COUNT = len(list(csv.reader(csvfile,delimiter = ',')))-1
	else:
		loadFile.configure(text="")
		startButton.configure(state=DISABLED)
		stopButton.configure(state=DISABLED)

# START THE SCENARIO
def StartScenario():
	global SCENARIO_FILE
	global SCENARIO_RUNNING
	if os.path.isfile(SCENARIO_FILE) and SCENARIO_RUNNING == FALSE:
		SCENARIO_RUNNING = TRUE
		
		# TOGGLE START/STOP BUTTONS
		startButton.configure(state=DISABLED)
		stopButton.configure(state=NORMAL)
		
		# START BROADCAST THREAD
		broadcast_thread = Thread(target=BroadcastScenario)
		broadcast_thread.daemon=TRUE
		broadcast_thread.start()

# BROADCAST THE SCENARIO
def BroadcastScenario():
	global SCENARIO_FILE
	global SCENARIO_RUNNING
	global SCENARIO_ROW_COUNT
	with open(SCENARIO_FILE) as csvfile:
		script = csv.reader(csvfile, delimiter=',')
		cnt = 0
		for row in script:
			if SCENARIO_RUNNING == TRUE:
				if row[0] == "IP_Address":
					continue
				cnt += 1
				host = row[0]
				UserName = row[1]
				PassWord = row[2]
				path_to_track = row[3] + '/' + row[4]
				freq = row[5]
				i = 1
				broadcastInfo.configure(text="Broadcasting: "+os.path.split(SCENARIO_FILE)[1]+" ("+str(cnt)+"/"+str(SCENARIO_ROW_COUNT)+")"+"\n\n"+
				"DRED: "+str(host)+"\n"+
				"Frequency: "+str(freq)+"\n"+
				"Clip Name: "+row[4]+"\n"+
				"Clip Description: "+row[6])
				print path_to_track
				#connectHost(host, UserName, PassWord, path_to_track, freq, i)
				time.sleep(randint(1,5)) # for testing purposes only!
				
				if cnt == SCENARIO_ROW_COUNT:
					broadcastInfo.configure(text=os.path.split(SCENARIO_FILE)[1]+" scenario has been completed!")
					SCENARIO_RUNNING = FALSE
					stopButton.configure(state=DISABLED)
					startButton.configure(state=NORMAL)
					sys.exit() # Exits broadcast thread only!
			else:
				# BROADCAST COMPLETED
				sys.exit() # Exits broadcast thread only!

# STOP THE SCENARIO
def StopScenario():
	global SCENARIO_RUNNING
	if SCENARIO_RUNNING == TRUE:
		SCENARIO_RUNNING = FALSE
		time.sleep(1) # This allows the broadcast thread variables time to flush out
		
		# TOGGLE START/STOP BUTTONS
		startButton.configure(state=NORMAL)
		stopButton.configure(state=DISABLED)
		broadcastInfo.configure(text="")

# GUI ELEMENTS
GUIHeader = Label(text="DRED NETWORK",font=('sans serif',36,'bold'),fg='#fbea2d',bg='#2d2d2d')
scenarioHeader = Label(text="Scenario Controller",font=('sans serif',16,'bold'),fg='#000000',bg=windowBGcolor)
loadButton = Button(text="Load Scenario",font=('sans serif',11),fg=buttonFGcolor,bg=buttonBGcolor,highlightthickness=1,borderwidth=1,command=lambda: LoadScenario())
loadFile = Button(font=('sans serif',11),bg='#ffffff',highlightthickness=1,borderwidth=1,relief=SOLID,anchor=W)
startButton = Button(text="Start Scenario",font=('sans serif',11),fg=buttonFGcolor,bg=buttonBGcolor,highlightthickness=1,borderwidth=1,command=lambda: StartScenario(),state=DISABLED)
stopButton = Button(text="Stop Scenario",font=('sans serif',11),fg=buttonFGcolor,bg=buttonBGcolor,highlightthickness=1,borderwidth=1,command=lambda: StopScenario(),state=DISABLED)
broadcastInfo = Label(text="",font=('sans serif',11),fg='#ffffff',bg='#161616',bd=1,relief=FLAT,anchor=NW,justify=LEFT,highlightthickness=5)

DREDHeader = Label(text="DRED Statuses",font=('sans serif',16,'bold'),fg='#000000',bg=windowBGcolor)


footer = Label(bg='#2d2d2d')

# GUI LAYOUT
GUIHeader.place(relx=0.5, anchor=CENTER, y=40,height=80,width=1000)
scenarioHeader.place(x=20,y=90)
loadButton.place(x=20, y=130,width=110)
loadFile.place(x=144, y=130,width=376)
startButton.place(x=20, y=200,width=110)
stopButton.place(x=144, y=200,width=110)
broadcastInfo.place(x=20,y=250,height=200,width=500)
footer.place(relx=0.5, anchor=CENTER, y=585,height=30,width=1000)
DREDHeader.place(x=620,y=90)
root.mainloop()
