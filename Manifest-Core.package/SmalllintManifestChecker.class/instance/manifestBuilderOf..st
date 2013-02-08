accessing
manifestBuilderOf: aCritic
	 (aCritic class = MCWorkingCopy)
		ifTrue: [^ self manifestBuilderOfPackage:aCritic ]. 
	^ aCritic isCompiledMethod 
		ifTrue: [self manifestBuilderOfMethod: aCritic]
		ifFalse: [self manifestBuilderOfClass: aCritic]