hashForText: aString
	^ aString hash bitXor: self settings secretUUID hash