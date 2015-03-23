applyFilterWithQuery
	| prefixMatches otherMatches |
	prefixMatches := OrderedCollection  new.
	otherMatches := OrderedCollection new.
	self allItemsDo: [ :each | 
		| index |
		index := self indexForItem: each.
		index >= 1 ifTrue: [
			index = 1 
				ifTrue: [ 
						prefixMatches add: each.
						prefixMatches size > self itemsLimit ifFalse: [ 
							self addItem: each  ] ]
				ifFalse: [ otherMatches add: each ] ] ].
	(prefixMatches size < self itemsLimit) ifTrue: [ 
		(otherMatches first: ((self itemsLimit - prefixMatches size) min: otherMatches size)) do: [ :each |
			self addItem: each ] ].
	self items: prefixMatches , otherMatches