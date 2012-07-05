initialize-release
checkCacheDirectory
	default notNil and: [default directory exists ifFalse: [default := nil]]