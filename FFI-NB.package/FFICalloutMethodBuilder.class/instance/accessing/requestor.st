requestor
	^ requestor ifNil: [ requestor := self createFFICallout ]