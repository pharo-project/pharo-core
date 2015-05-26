reject: aBlock thenDo: aBlock2
	self do: [ :each | 
		(aBlock value: each) 
			ifFalse: [ aBlock2 value: each ] ]