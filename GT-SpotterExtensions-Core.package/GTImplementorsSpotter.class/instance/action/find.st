find
	| prefixMatchers rest |
	prefixMatchers := OrderedCollection new.
	rest := OrderedCollection new.
	context isEmpty ifFalse: [ 
			behaviors
				do: [ :class | 
					class
						selectorsDo: [ :selector | 
							| index |
							index := selector findString: context textTrimmed startingAt: 1 caseSensitive: false.
							index >= 1
								ifTrue: [ 
									| method |
									method := class >> selector.
									index = 1
										ifTrue: [ 
											prefixMatchers add: method.
											prefixMatchers size > self limit
												ifFalse: [ context addItem: method ] ]
										ifFalse: [ rest add: method ] ] ] ].
			prefixMatchers size < self limit
				ifTrue: [ (rest first: (self limit - prefixMatchers size min: rest size)) do: [ :each | 
						context addItem: each ] ] ].
	^ prefixMatchers , rest 