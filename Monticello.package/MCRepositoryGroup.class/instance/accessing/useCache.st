useCache
	^ useCache ifNil: [
		useCache := true
	]