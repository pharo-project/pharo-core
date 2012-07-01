accessing
nextModel
	^ expand 
		ifTrue: [nextModel ifNil: [nextModel := NECUntypedModel class: clazz temporaries: localVars additionals: #() variables: includeVariables selectors: includeSelectors. nextModel narrowWith: narrowString] ifNotNil: [nextModel]]
		ifFalse: [NOCEmptyModel new]