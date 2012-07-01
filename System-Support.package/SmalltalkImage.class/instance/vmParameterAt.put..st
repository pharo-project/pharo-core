to clean later
vmParameterAt: parameterIndex put: newValue

	"This method is deprecated.
	
	We're not putting a #deprecated: message here, because then it may produce a lot of warnings"
	
	^ self vm parameterAt: parameterIndex put: newValue