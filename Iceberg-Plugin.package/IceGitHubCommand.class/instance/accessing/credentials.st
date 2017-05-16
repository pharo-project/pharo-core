credentials 
	^ credentials ifNil: [ credentials := self obtainCredentials ]