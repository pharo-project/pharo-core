max: aBlock
	| max |
	
	self ifEmpty: [ ^ nil ].
	
	max := aBlock value: self first.
	
	self allButFirstDo: [ :each || value |
		value := aBlock value: each.
		value > max ifTrue: [ max := value ] ].
	
	^ max