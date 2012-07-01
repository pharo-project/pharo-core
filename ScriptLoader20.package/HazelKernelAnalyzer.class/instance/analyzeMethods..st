private
analyzeMethods: aClass
	aClass methodDict do:[:method |
		self analyzeMethod: method].
	
	aClass classSide methodDict do:[:method |
		self analyzeMethod: method]