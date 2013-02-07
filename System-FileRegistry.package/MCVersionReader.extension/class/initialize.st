*System-FileRegistry
initialize
	"MCVersionReader initialize"

	Smalltalk globals at: #MczInstaller ifPresent: [ :installer | 
		FileServices unregisterFileReader: installer ].
	
	self concreteSubclasses do: [ :aClass | 
		"get rid of AnObsoleteMCMcReader and AnObsoleteMCMcvReader"
		FileServices registerFileReader: aClass ].
	
	FileServices registeredFileReaderClasses 
		select: [ :ea | ea isObsolete ]
		thenDo: [ :ea | FileServices unregisterFileReader: ea ]