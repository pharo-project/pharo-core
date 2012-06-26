accessing
minWidth
	"Fixed to work such that guessed width is unnecessary in
	#adjustSubmorphPositions."

	| iconWidth |
	iconWidth := self hasIcon
				ifTrue: [self icon width + 2]
				ifFalse: [0].
	^(13 * indentLevel + 15 + (self fontToUse widthOfString: contents)
		+ iconWidth) max: super minWidth