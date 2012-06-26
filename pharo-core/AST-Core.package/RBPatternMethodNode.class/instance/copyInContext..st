matching
copyInContext: aDictionary 
	| selectors |
	selectors := self isSelectorList 
		ifTrue: [ (aDictionary at: selectorParts first value) keywords ]
		ifFalse: [ self selectorParts collect: [ :each | aDictionary at: each value ] ].
	^ RBMethodNode new
		selectorParts: (selectors collect: [ :each | 
			(each last = $: ifTrue: [ RBKeywordToken ] ifFalse: [ RBIdentifierToken ]) 
				value: each start: nil ]);
		arguments: (self copyList: self arguments inContext: aDictionary);
		pragmas: (self pragmas isEmpty
			ifTrue: [ aDictionary at: '-pragmas-' ifAbsent: [ #() ] ]
			ifFalse: [ self copyList: self pragmas inContext: aDictionary ]);
		body: (self body copyInContext: aDictionary);
		source: (aDictionary at: '-source-');
		yourself