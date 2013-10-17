copyInContext: aDictionary 
	| selectors |
	selectors := self isSelectorList 
		ifTrue: [ (aDictionary at: selectorParts first value) keywords ]
		ifFalse: [ self selectorParts collect: [ :each | aDictionary at: each value ] ].
	^ RBPragmaNode new
		selectorParts: (selectors collect: [ :each | 
			(each last = $: ifTrue: [ RBKeywordToken ] ifFalse: [ RBIdentifierToken ]) 
				value: each start: nil ]);
		arguments: (self copyList: self arguments inContext: aDictionary);
		yourself