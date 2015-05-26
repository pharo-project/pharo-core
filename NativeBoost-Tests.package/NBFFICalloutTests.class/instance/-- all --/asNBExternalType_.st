asNBExternalType: gen

	self assert: (gen respondsTo: #asm).
	self assert: (gen respondsTo: #proxy).
	
	self assert: (gen requestor == self).

	
	^ NBUInt32 new