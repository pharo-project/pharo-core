asExternalTypeOn: generator
	^ FFIConst value: self type: (generator resolveExternalType: #uint32)