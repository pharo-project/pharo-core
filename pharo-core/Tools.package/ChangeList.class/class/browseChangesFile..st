filein/out
browseChangesFile: fullName
	"Browse the selected file in fileIn format."

	fullName
		ifNotNil:
			[self browseStream: (FileStream readOnlyFileNamed:  fullName)]
		ifNil:
			[Beeper beep]