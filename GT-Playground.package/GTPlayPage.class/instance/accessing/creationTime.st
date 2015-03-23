creationTime
	" lazy for better backward/forward-compatibility "
	^ creationTime ifNil: [ creationTime := self defaultCreationTime ]