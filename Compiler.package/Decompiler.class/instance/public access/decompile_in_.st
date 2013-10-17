decompile: aSelector in: aClass 
	"See Decompiler|decompile:in:method:. The method is found by looking up 
	the message, aSelector, in the method dictionary of the class, aClass."
	self deprecated: 'use #decompileMethod:' on: '09 May 2013' in: 'Pharo 3.0'.
	^self
		decompile: aSelector
		in: aClass
		method: (aClass compiledMethodAt: aSelector)