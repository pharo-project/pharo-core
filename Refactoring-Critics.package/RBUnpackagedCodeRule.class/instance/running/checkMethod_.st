checkMethod: aMethod
	aMethod isDoIt ifTrue: [ ^self ].
	(self isUnpackaged: aMethod) ifTrue: [
		self result addMethod: aMethod ]