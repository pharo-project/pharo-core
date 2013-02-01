snapshot and quit
snapshot: save andQuit: quit
	"Mark the changes file and close all files as part of #processShutdownList.
	If save is true, save the current state of this Smalltalk in the image file.
	If quit is true, then exit to the outer OS shell.
	The latter part of this method runs when resuming a previously saved image. This resume logic checks for a document file to process when starting up."

	| snapshotResult isNewImage startupErrors |
	self addSnapshotRecord: save andQuit: quit.
	self shutDownImage: quit.
									
	save
		ifTrue: [ 
			snapshotResult := self snapshotPrimitive.	"<-- PC frozen here on image file"
			isNewImage := snapshotResult == true ]
		ifFalse: [ isNewImage := false ].
	(quit and: [ isNewImage not ])
		ifTrue: [ self quitPrimitive ].
	
	"create a new session object if we're booting"
	isNewImage ifTrue: [ session := self newSessionObject ].
	
	self startupImage: isNewImage snapshotWorked: snapshotResult.
	
	"We return the resuming state, which may be useful for users to know the state of the image"
	^ isNewImage