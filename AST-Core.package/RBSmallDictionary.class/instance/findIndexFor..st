private
findIndexFor: aKey
	1 to: tally do: [ :index |
		(keys at: index) = aKey
			ifTrue: [ ^ index ] ].
	^ 0