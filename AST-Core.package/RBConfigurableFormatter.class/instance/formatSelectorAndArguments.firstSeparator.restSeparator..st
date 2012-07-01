private-formatting
formatSelectorAndArguments: aMessageNode firstSeparator: firstBlock restSeparator: restBlock
	| separatorBlock |
	separatorBlock := firstBlock.
	aMessageNode isUnary
		ifTrue: [ 
			(self isLineTooLong: aMessageNode selector)
				ifTrue: [ self newLine ]
				ifFalse: [ separatorBlock value ].
			codeStream nextPutAll: aMessageNode selector ]
		ifFalse: [ 
			aMessageNode selectorParts
				with: aMessageNode arguments
				do: [ :selector :argument | 
					(self isLineTooLong: selector value)
						ifTrue: [ self newLine ]
						ifFalse: [ separatorBlock value ].
					separatorBlock := restBlock.
					self
						indentAround: [ 
							codeStream nextPutAll: selector value.
							(KeepBlockInMessage and: [ argument isBlock ])
								ifTrue: [ 
									self
										space;
										visitNode: argument ]
								ifFalse: [ 
									((self willBeMultiline: argument) or: [ self isLineTooLong: (self formattedSourceFor: argument) ])
										ifTrue: [ self newLine ]
										ifFalse: [ self space ].
									self visitNode: argument ] ] ] ]