setIndex: idx
	pluggable
		ifFalse: [ ^ self ].
	index := idx = index
		ifTrue: [ 0 ]
		ifFalse: [ idx ].
	self changed: #getIndex