content
	" lazy for better backward/forward-compatibility "
	^ content ifNil: [ self defaultContent ]