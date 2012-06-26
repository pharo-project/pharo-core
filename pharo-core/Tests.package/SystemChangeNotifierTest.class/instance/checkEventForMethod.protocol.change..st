Private
checkEventForMethod: aMethod protocol: prot change: changeKind 

	self assert: (capturedEvent perform: ('is' , changeKind) asSymbol).
	self assert: capturedEvent item = aMethod.
	self assert: capturedEvent itemKind = AbstractEvent methodKind.
	self assert: capturedEvent itemClass = self class.
	self assert: capturedEvent itemMethod = aMethod.
	self assert: capturedEvent itemProtocol = prot