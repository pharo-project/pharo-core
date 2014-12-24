spotterImplementorsFor: aStep
    <spotterOrder: 30>
	| processor |
	self flag: 'This has to be refactored from scratch'.
	processor := aStep listProcessor.
	processor
		title: 'Implementors';
		filter: [ :originalQuery :stream |
			|query prefixMatchers rest |
			query := originalQuery trimBoth asLowercase.
			query isEmpty 
				ifFalse: [
					prefixMatchers := OrderedCollection new.
					rest := OrderedCollection new.
					SystemNavigation default allBehaviorsDo: [:class | 
						class selectorsDo:[ :selector | 
							| index |
							index := (selector findString: query startingAt: 1 caseSensitive: false).
							index >= 1 ifTrue: [
								| method |
								method := class>>selector.
								index = 1 ifTrue: [ 
									prefixMatchers add: method.
									prefixMatchers size > 5 ifFalse: [ 
										stream addObject: method inProcessor: processor ]]
									ifFalse: [ rest add: method ]]]].
					(prefixMatchers size < 5) ifTrue: [ 
						(rest first: ((5 - prefixMatchers size) min: rest size)) do: [ :each |
							stream addObject: each inProcessor: processor ] ].
					prefixMatchers , rest ]  ]