checkMethod: aMethod 
	(self matcher canMatchMethod: aMethod) 
		ifFalse: [ ^ self ].
	(self matcher executeTree: aMethod parseTree initialAnswer: nil) isNil 
		ifFalse: [ result addMethod: aMethod ]