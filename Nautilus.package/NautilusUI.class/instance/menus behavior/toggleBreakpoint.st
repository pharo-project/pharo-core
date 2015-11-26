toggleBreakpoint
	| savedSelectedMethodIndex savedVscroll |
	self selectedMethod ifNil: [ ^ self ].
	savedSelectedMethodIndex := methodWidget selectedMethodIndex.
	savedVscroll := methodWidget vScrollValue.
	self toggleBreakOnEntryIn: self selectedMethod.
	self resetMethodsList.
	methodWidget updateMethodList. 
	methodWidget selectedMethodIndex: savedSelectedMethodIndex.
	savedVscroll := methodWidget vScrollValue: savedVscroll