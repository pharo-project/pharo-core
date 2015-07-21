interpretMethod: aCompiledMethod
	aCompiledMethod isQuick
		ifTrue: [ self quickMethod ]
		ifFalse: [ 
			self initializeErrorCode: aCompiledMethod.
			self interpret: aCompiledMethod endPC ]