selectedVariableName
	^selectedVariable ifNil: [ super selectedVariableName ] ifNotNil:   [selectedVariable]