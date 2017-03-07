variablesFromContext: aContext 
	^ cachedVariables ifNil: [ cachedVariables := self buildVariablesFromContext: aContext ]