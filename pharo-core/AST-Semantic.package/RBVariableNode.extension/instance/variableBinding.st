*ast-semantic-accessing
variableBinding
	^ self propertyAt: #variableBinding ifAbsent: [ self semanticAnnotationMissing ]