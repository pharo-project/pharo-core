check: aMethod
	method == aMethod 
		ifTrue: [
			self resume: true "recursion detected"
			  ] 
		ifFalse: [ self pass ]