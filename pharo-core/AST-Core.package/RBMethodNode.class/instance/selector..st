accessing
selector: aSelector 
	| keywords numArgs |
	keywords := aSelector keywords.
	numArgs := aSelector numArgs.
	numArgs == arguments size 
		ifFalse: 
			[self 
				error: 'Attempting to assign selector with wrong number of arguments.'].
	selectorParts := numArgs == 0 
				ifTrue: [Array with: (RBIdentifierToken value: keywords first start: nil)]
				ifFalse: 
					[keywords first last = $: 
						ifTrue: [keywords collect: [:each | RBKeywordToken value: each start: nil]]
						ifFalse: [Array with: (RBBinarySelectorToken value: aSelector start: nil)]].
	selector := aSelector asSymbol