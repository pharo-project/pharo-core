whenReturnEntered: anAnnouncement
	" Change the announcement accepted state, then 
	the text area will ignore the cr and accept the input
	The consequence will be a RubTextAccepted announce and here 
	the execution of #whenTextAccepted:"
	acceptOnCR ifTrue: [anAnnouncement accepted: true]