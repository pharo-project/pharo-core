private-formatting
formatSelectorAndArguments: aMessageNode
	| newLineBetweenArguments |
	newLineBetweenArguments := self isMultiLineMessage: aMessageNode.
	self
		indent:
			(newLineBetweenArguments
				ifTrue: [ IndentsForKeywords ]
				ifFalse: [ 0 ])
		around: [ 
			self
				formatSelectorAndArguments: aMessageNode
				firstSeparator:
					((newLineBetweenArguments or: [ NewLineBeforeFirstKeyword ])
						ifTrue: [ [ self newLine ] ]
						ifFalse: [ [ self space ] ])
				restSeparator:
					(newLineBetweenArguments
						ifTrue: [ [ self newLine ] ]
						ifFalse: [ [ self space ] ]) ]