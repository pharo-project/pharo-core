Private
checkEvent: anEvent kind: changeKind item: item itemKind: itemKind 

	self assert: (anEvent perform: ('is' , changeKind) asSymbol).
	self assert: anEvent item = item.
	self assert: anEvent itemKind = itemKind