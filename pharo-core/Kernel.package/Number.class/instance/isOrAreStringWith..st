printing
isOrAreStringWith: aNoun
	| result |
	result := self = 1
		ifTrue:
			[' is one ']
		ifFalse:
			[self = 0
				ifTrue:
					[' are no ']
				ifFalse:
					[' are ', self printString, ' ']].
	result := result, aNoun.
	self = 1 ifFalse: [result := result, 's'].
	^ result

"#(0 1 2 98.6) do:
	[:num | Transcript cr; show: 'There', (num isOrAreStringWith: 'way'), ' to skin a cat']"