checkMethod: aMethod 
	(self matcher canMatchMethod: aMethod) 
		ifFalse: [ ^ self ].
	(self matcher executeTree: aMethod ast initialAnswer: nil) isNil 
		ifFalse: [ result addMethod: aMethod ]