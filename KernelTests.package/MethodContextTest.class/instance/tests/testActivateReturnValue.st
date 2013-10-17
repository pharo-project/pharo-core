testActivateReturnValue
	self assert:  ((aSender activateReturn: aMethodContext value: #()) isKindOf: MethodContext).
	self assert:  ((aSender activateReturn: aMethodContext value: #()) receiver = aMethodContext).