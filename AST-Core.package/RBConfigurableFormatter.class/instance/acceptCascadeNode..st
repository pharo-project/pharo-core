visitor-double dispatching
acceptCascadeNode: aCascadeNode 
	self visitNode: aCascadeNode receiver.
	self indentAround: 
			[NewLineBeforeFirstCascade ifTrue: [self newLine] ifFalse: [self space].
			aCascadeNode messages do: 
					[:each | 
					self indentAround: 
							[self 
								formatSelectorAndArguments: each
								firstSeparator: []
								restSeparator: ((self isMultiLineMessage: each) 
										ifTrue: [[self newLine]]
										ifFalse: [[self space]])]]
				separatedBy: 
					[codeStream nextPut: $;.
					NewLineAfterCascade ifTrue: [self newLine] ifFalse: [self space]]]