halo
	^ self primaryHand halo
		ifNotNil: [ :h | h target == self ifTrue: [ h ] ]