grabScreenAndSaveOnDisk
	"GIFReadWriter grabScreenAndSaveOnDisk"
	| form fileName |
	
	form := Form fromUser.
	form bits size = 0 ifTrue: [ ^ Beeper beep ].
	
	fileName := (FileSystem disk workingDirectory / 'Pharo', 'gif') fullName.
		
	UIManager default 
		informUser: 'Writing ' translated, fileName
		during: 
			[ GIFReadWriter 
				putForm: form
				onFileNamed: fileName ]