showByteCodes: aBoolean
	"Get into or out of bytecode-showoing mode"

	self okToChange ifFalse: [^ self changed: #flash].
	aBoolean
		ifTrue:
			[self contentsSymbol: #byteCodes]
		ifFalse:
			[contentsSymbol == #byteCodes ifTrue: [self contentsSymbol: #source]].
	self contentsChanged