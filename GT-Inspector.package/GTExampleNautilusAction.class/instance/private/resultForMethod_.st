resultForMethod: aCompiledMethod
	^ aCompiledMethod gtExamples 
		ifNotEmpty: [ :examples | examples first result ]
		ifEmpty: [ nil ]