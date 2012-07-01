name utilities
extensionFor: fileName
	"Return the extension of given file name, if any."

	| delim i |
	delim := DirectoryClass extensionDelimiter.
	i := fileName findLast: [:c | c = delim].
	i = 0
		ifTrue: [^ '']
		ifFalse: [^ fileName copyFrom: i + 1 to: fileName size].
