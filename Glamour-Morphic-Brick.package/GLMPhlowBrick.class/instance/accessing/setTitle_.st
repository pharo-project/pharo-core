setTitle: aString

	self titleBrick text: aString.
	
	titleBrick layoutProperties staticHeight: (
		(aString isEmpty | aString isNil)
			ifFalse: [ 30 ]
			ifTrue: [ 0 ])