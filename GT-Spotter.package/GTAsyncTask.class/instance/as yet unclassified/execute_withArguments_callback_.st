execute: aBlock withArguments: aCollection callback: callbackBlock
	"execution happens with UI process priority so that comunication with UI can be done in real time"
	
	self terminate.
	
	callback := callbackBlock.
	process := [ |result|
		result := aBlock valueWithArguments: aCollection.
		"we use it to pass result from background thread and execute callback block in UI thread"
		UIManager default defer: [ self complete: result callback: callbackBlock ]
	]	newProcess
		resume.
		
	^ self