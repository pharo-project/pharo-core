Private
checkEventForClass: aClass category: cat change: changeKind 

	self assert: (capturedEvent perform: ('is' , changeKind) asSymbol).
	self assert: capturedEvent item = aClass.
	self assert: capturedEvent itemKind = AbstractEvent classKind.
	self assert: capturedEvent itemClass = aClass.
	self assert: capturedEvent itemCategory = cat