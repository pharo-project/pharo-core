run: aCompiledMethod
	(self resultForMethod: aCompiledMethod)
		ifNotNil: [ :result | result run; debug ]