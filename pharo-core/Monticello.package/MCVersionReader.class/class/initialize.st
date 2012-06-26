file services
initialize
	"MCVersionReader initialize"

	Smalltalk globals at: #MczInstaller ifPresent: [ :installer | FileServices unregisterFileReader: installer ].
	self concreteSubclasses do: [ :aClass | FileServices registerFileReader: aClass ].	"get rid of AnObsoleteMCMcReader and AnObsoleteMCMcvReader"
	(FileServices registeredFileReaderClasses select: [ :ea | ea isObsolete ]) do: [ :ea | FileServices unregisterFileReader: ea ]