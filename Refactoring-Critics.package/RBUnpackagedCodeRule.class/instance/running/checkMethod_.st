checkMethod: aMethod
	(self isUnpackaged: aMethod) ifTrue: [
		self result addMethod: aMethod ]