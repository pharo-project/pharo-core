matchSubstring
	self filter: [ :originalQuery :stream |
		| prefixMatchers rest query |
		"if filter is empty we stream all candidates"
		query := originalQuery trimBoth asLowercase.
		query isEmpty 
			ifTrue: [ self streamAllCandidatesOn: stream ]
			ifFalse: [
				prefixMatchers := OrderedCollection  new.
				rest := OrderedCollection new.
				self allCandidates do: [:each | 
					| index |
					index := (self itemNameFor: each) findString: query startingAt: 1 caseSensitive: false.
					index >= 1 ifTrue: [
						index = 1 
							ifTrue: [ 
									prefixMatchers add: each.
									prefixMatchers size > 5 ifFalse: [ 
										stream addObject: each inProcessor: self ]]
							ifFalse: [ rest add: each ]]].
				(prefixMatchers size < 5) ifTrue: [ 
					(rest first: ((5 - prefixMatchers size) min: rest size)) do: [ :each |
						stream addObject: each inProcessor: self ] ].
				prefixMatchers , rest ] ]