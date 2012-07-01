private-formatting
formatMessage: aMessageNode cascade: cascadeBoolean 
	| selectorParts arguments multiLine formattedArgs indentFirst firstArgLength length |
	selectorParts := aMessageNode selectorParts.
	arguments := aMessageNode arguments.
	formattedArgs := OrderedCollection new.
	multiLine := aMessageNode selector numArgs > self maximumArgumentsPerLine.
	length := aMessageNode selector size + arguments size + 1.
	firstArgLength := 0.
	self indentWhile: 
			[1 to: arguments size
				do: 
					[:i | 
					| formatter string |
					formatter := (self copy)
								lineStart: (selectorParts at: i) length negated;
								yourself.
					string := formatter format: (arguments at: i).
					formattedArgs add: string.
					i == 1 ifTrue: [firstArgLength := formatter firstLineLength].
					length := length + string size.
					multiLine := multiLine or: [formatter isMultiLine]]].
	multiLine := multiLine or: [length + self lineLength > self maxLineSize].
	indentFirst := cascadeBoolean not and: 
					[multiLine and: 
							[(self startMessageSendOnNewLine: aMessageNode) or: 
									[self lineLength + selectorParts first length + 2 + firstArgLength 
										> self maxLineSize]]].
	indentFirst ifTrue: [self indent].
	self 
		formatMessageSelector: selectorParts
		withArguments: formattedArgs
		multiline: multiLine