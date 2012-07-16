*Deprecated20
vmParameterAt: parameterIndex put: newValue
	self deprecated: 'use Smalltalk vm parameterAt:put:' on:  '13 July 2012'  in: 'Pharo 2.0'.
	
	^ self vm parameterAt: parameterIndex put: newValue