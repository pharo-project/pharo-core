public access
browseRecentLogOnPath: fullName 
	"figure out where the last snapshot or quit was, then browse the recent  entries."

	fullName
		ifNotNil:
			[self browseRecentLogOn: (FileStream readOnlyFileNamed: fullName)]
		ifNil:
			[Beeper beep]
	