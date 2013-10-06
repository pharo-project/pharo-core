storeOnStream: aStream
	
	self shouldBePrintedAsLiteral 
		ifTrue:  [ super storeOnStream: aStream ]
		ifFalse: [ aStream writeCollection: self ]
