public access
decompile: aSelector in: aClass 
	"See Decompiler|decompile:in:method:. The method is found by looking up 
	the message, aSelector, in the method dictionary of the class, aClass."

	^self
		decompile: aSelector
		in: aClass
		method: (aClass compiledMethodAt: aSelector)