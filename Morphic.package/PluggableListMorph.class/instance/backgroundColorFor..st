background coloring
backgroundColorFor: aRow

	| return |
	aRow ifNil: [ ^nil ].
	
	self backgroundColoringBlockOrSelector
		ifNotNil: [:blockOrSelector || anItem |
			anItem := getListElementSelector
						ifNil: [ list at: aRow ifAbsent: [ ^ false ]]
						ifNotNil: [ model perform: getListElementSelector with: aRow ].

			return := blockOrSelector isBlock
				ifTrue: [ blockOrSelector cull: anItem cull: aRow ]
				ifFalse: [
					blockOrSelector isSymbol
						ifTrue: [ blockOrSelector numArgs == 0
									ifTrue: [ anItem perform: blockOrSelector ]
									ifFalse: [ self model perform: blockOrSelector withEnoughArguments: { anItem. (list indexOf: anItem)} ]]
						ifFalse: [ nil ]]].
		
		^ return isColor
			ifTrue: [ return ]
			ifFalse: [ nil ]