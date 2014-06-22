toggle

	Current 
		ifNotNil: [ Current close. Current := nil ]
		ifNil: [ (Current := self new) open ]