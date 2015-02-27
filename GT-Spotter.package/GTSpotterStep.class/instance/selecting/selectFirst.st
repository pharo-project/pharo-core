selectFirst
	
	self candidates isEmpty ifTrue: [ ^ self ].
	self selected: self candidates head