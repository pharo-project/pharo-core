private
printSingleComment: aString on: aStream indent: indent 
	"Print the comment string, assuming it has been indented indent tabs.
	Break the string at word breaks, given the widths in the default
	font, at 450 points."

	| readStream word position lineBreak font wordWidth tabWidth spaceWidth lastChar |
	readStream := aString readStream.
	font := TextStyle default defaultFont.
	tabWidth := DefaultTab.
	spaceWidth := font widthOf: Character space.
	position := indent * tabWidth.
	lineBreak := 450.
	[readStream atEnd]
		whileFalse: 
			[word := self nextWordFrom: readStream setCharacter: [:lc | lastChar := lc].
			wordWidth := word inject: 0 into: [:width :char | width + (font widthOf: char)].
			position := position + wordWidth.
			position > lineBreak
				ifTrue: 
					[aStream skip: -1; crtab: indent.
					position := indent * tabWidth + wordWidth + spaceWidth.
					lastChar = Character cr
						ifTrue: [[readStream peekFor: Character tab] whileTrue].
					word isEmpty ifFalse: [aStream nextPutAll: word; space]]
				ifFalse: 
					[aStream nextPutAll: word.
					readStream atEnd
						ifFalse: 
							[position := position + spaceWidth.
							aStream space].
					lastChar = Character cr
						ifTrue: 
							[aStream skip: -1; crtab: indent.
							position := indent * tabWidth.
							[readStream peekFor: Character tab] whileTrue]]]