#!/usr/bin/env python
###################################
# NAME: DRED GUI
# AUTHORS:
###################################
VERSION = '1.0.1'

# IMPORT MODULES
from Tkinter import *
import csv
import os
import subprocess
import tkFileDialog as filedialog

root = Tk()

# GUI SETTINDS
root.title('DRED v' + VERSION)
root.wm_attributes("-topmost", 1)
root.attributes("-toolwindow", 1)
root.configure(background='#f5d95c')
root.resizable(width=FALSE, height=FALSE)
w = 400
h = 300

# CENTER THE GUI
x = (root.winfo_screenwidth() // 2) - (w // 2)
y = (root.winfo_screenheight() // 2) - (h // 2)
root.geometry('{}x{}+{}+{}'.format(w, h, x, y))

# GLOBAL SCENARIO-RELATED VARIABLES
DRED_NET = None
RUNNING = FALSE
SCENARIO_FILE = None

# LOAD A SCENARIO
def LoadScenario():
	global SCENARIO_FILE
	SCENARIO_FILE = filedialog.askopenfilename(initialdir = "/",title = "Load a Scenario",filetypes = (("CSV Files","*.csv"),))
	
	# CLOSE AN OPENED (AND STOP A RUNNING) OPEN_Net.py
	global RUNNING
	if RUNNING == TRUE;
		RUNNING = FALSE
	global DRED_NET
	if DRED_NET != None:
		DRED_Net.terminate()
		DRED_NET = None
	
	# SHOW FILE NAME AND TOGGLE START/STOP BUTTONS
	global loadLabel
	global startButton
	global stopButton
	if os.path.isfile(SCENARIO_FILE):
		loadLabel.configure(text=os.path.split(SCENARIO_FILE)[1])
		startButton.configure(text="Start Scenario",state=NORMAL) # ENABLE
		stopButton.configure(state=DISABLED) # DISABLE
		
		# PRINT CSV'S ROW COUNT
		with open(SCENARIO_FILE,"r") as f:
			reader = csv.reader(f,delimiter = ",")
			data = list(reader)
			row_count = len(data)-1 # SUBTRACT HEADER ROW FROM COUNT
			print "Scenario Row Count: " + str(row_count)
	else:
		loadLabel.configure(text="")
		startButton.configure(text="Start Scenario",state=DISABLE) # DISABLE
		stopButton.configure(state=DISABLED) # DISABLE
			
# START THE SCENARIO
def StartScenario():
	global RUNNING
	global SCENARIO_FILE
	if RUNNING == FALSE and os.path.isfile(SCENARIO_FILE):
		RUNNING = TRUE
		
		# OPEN DREAD_Net.py WITH ARGUMENTS
		global DRED_NET
		DRED_NET = subprocess.Popen(['python', 'DRED_Net.py', SCENARIO_FILE]) #arg1 = FILE PATH OF LOADED SCENARIO
		
		# TOGGLE START/STOP BUTTONS
		global startButton
		startButton.configure(state=DISABLED) # DISABLE
		global stopButton
		stopButton.configure(state=NORMAL) # ENABLE

# STOP THE SCENARIO
def StopScenario():
	global RUNNING
	if RUNNING == TRUE:
		RUNNING = FALSE
		
		# CLOSE DRED_Net.py
		global DRED_NET
		DRED_NET.terminate()

		# TOGGLE START/STOP BUTTONS
		global startButton
		startButton.configure(text="Restart Scenario",state=NORMAL) # ENABLE
		global stopButton
		stopButton.configure(state=DISABLED) # DISABLE

# GUI ELEMENTS
title = Label(text="DRED",font=('sans serif',36,'bold'),bg='#f5d95c')
loadButton = Button(root,text="Load Scenario",command=lambda: LoadScenario(),width=12)
loadLabel = Label(text="",font=('sans serif',11),bg='#f5d95c') # SCENARIO'S CSV FILE NAME
startButton = Button(root,text="Start Scenario",command=lambda: StartScenario(),width=12,state=DISABLED)
stopButton = Button(root,text="Stop Scenario",command=lambda: StopScenario(),width=12,state=DISABLED)

# GUI LAYOUT
title.grid(row=0,column=0,columnspan=2,padx=(5,0),pady=(5,5),sticky="w")
loadButton.grid(row=1,column=0,padx=(5,0),pady=(5,5),sticky="w")
loadLabel.grid(row=1,column=1,padx=(5,0),pady=(5,5),sticky="w")
startButton.grid(row=2,column=0,padx=(5,5),pady=(5,5),sticky="w")
stopButton.grid(row=2,column=1,padx=(5,5),pady=(5,5),sticky="w")

root.mainloop()