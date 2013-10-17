executeOn: interpreter
	^ superOf
		ifNil: [interpreter send: selector]
		ifNotNil: [interpreter send: selector toSuperOf: superOf]