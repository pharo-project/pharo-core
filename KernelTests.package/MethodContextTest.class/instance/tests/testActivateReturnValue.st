testActivateReturnValue
	self assert:  ((aSender activateReturn: aContext value: #()) isKindOf: Context).
	self assert:  ((aSender activateReturn: aContext value: #()) receiver = aContext).