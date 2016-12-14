requestorScopeClass
	^ requestorScopeClass ifNil: [ requestorScopeClass := OCRequestorScope ]