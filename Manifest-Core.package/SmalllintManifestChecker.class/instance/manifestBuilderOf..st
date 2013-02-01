accessing
manifestBuilderOf: aCritic
	
	^ aCritic isCompiledMethod 
		ifTrue: [self manifestBuilderOfMethod: aCritic]
		ifFalse: [self manifestBuilderOfClass: aCritic]