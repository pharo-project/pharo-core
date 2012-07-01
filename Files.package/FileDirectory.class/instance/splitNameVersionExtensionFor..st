file name utilities
splitNameVersionExtensionFor: fileName
	" answer an array with the root name, version # and extension.
	See comment in nextSequentialNameFor: for more details"

	| baseName version extension i j |

	baseName := self class baseNameFor: fileName.
	extension := self class extensionFor: fileName.
	i := j := baseName findLast: [:c | c isDigit not].
	i = 0
		ifTrue: [version := 0]
		ifFalse:
			[(baseName at: i) = $.
				ifTrue:
					[version := [(baseName copyFrom: i+1 to: baseName size) asNumber] 
									on: Error do: [:ex| 0].
					j := j - 1]
				ifFalse: [version := 0].
			baseName := baseName copyFrom: 1 to: j].
	^ Array with: baseName with: version with: extension