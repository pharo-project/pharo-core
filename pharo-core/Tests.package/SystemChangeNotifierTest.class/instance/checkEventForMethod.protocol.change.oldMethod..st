Private
checkEventForMethod: aMethod protocol: prot change: changeKind oldMethod: oldMethod

	self checkEventForMethod: aMethod protocol: prot change: changeKind.
	self assert: capturedEvent oldItem == oldMethod
	