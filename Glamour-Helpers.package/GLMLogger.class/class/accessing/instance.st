instance
	^ instance ifNil: [
		instance := self nullInstance ]