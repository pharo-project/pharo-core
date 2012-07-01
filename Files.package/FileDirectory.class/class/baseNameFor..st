name utilities
baseNameFor: fileName
	"Return the given file name without its extension, if any. We have to remember that many (most?) OSs allow extension separators within directory names and so the leaf filename needs to be extracted, trimmed and rejoined. Yuck"
	"The test is 
		FileDirectory baseNameFor: ((FileDirectory default directoryNamed: 'foo.bar') fullNameFor:'blim.blam') 
		should end 'foo.bar/blim' (or as appropriate for your platform AND
		FileDirectory baseNameFor: ((FileDirectory default directoryNamed: 'foo.bar') fullNameFor:'blim')
		should be the same and NOT  'foo'
		Oh, and FileDirectory baseNameFor: 'foo.bar' should be 'foo' not '/foo' "

	self splitName: fileName to: [:path : fn|
		| delim i leaf |
		delim := DirectoryClass extensionDelimiter.
		i := fn findLast: [:c | c = delim].
		leaf := i = 0
			ifTrue: [fn]
			ifFalse: [fn copyFrom: 1 to: i - 1].
		path isEmpty ifTrue:[^leaf].
		^path, self slash, leaf]
