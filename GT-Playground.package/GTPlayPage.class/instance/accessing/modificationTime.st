modificationTime
	" lazy for better backward/forward-compatibility "
	^ modificationTime ifNil: [ modificationTime := self defaultModificationTime ]