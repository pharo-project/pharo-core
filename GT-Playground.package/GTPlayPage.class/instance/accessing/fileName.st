fileName
	" lazy for better backward/forward-compatibility "
	^ fileName ifNil: [ fileName := self defaultFileName ]