class initialization
guessDefaultLineEndConvention
	"Lets try to guess the line end convention from what we know about the
	path name delimiter from FileDirectory."
	
	FileSystem disk delimiter = $:
		ifTrue: [^ self defaultToCR].
		
	FileSystem disk delimiter = $/
		ifTrue: [^ (OSPlatform isMacOSX or: [OSPlatform isUnix])
				ifTrue: [ self defaultToLF]
				ifFalse: [ self defaultToCR]].
			
	FileSystem disk delimiter = $\
		ifTrue: [^ self defaultToCRLF].
		
	"in case we don't know"
	^ self defaultToCR