current
	^ currentInstance ifNil: [ currentInstance := self new ]