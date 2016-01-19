valueInContext: callbackContext "<VMCallbackContext32|VMCallbackContext64> ^<Integer>"
	| argumentValues stackPointer index |
	
	self flag: #todo. "This can be optimised in a shadow method"
	stackPointer := callbackContext stackp.
	index := 1.
	argumentValues := functionSpec arguments 
		collect: [ :each | | value |
			value := each callbackValueFor: stackPointer at: index.
			index := index + each typeSize.
			value ].
	^ functionSpec returnType 
		callbackReturnOn: callbackContext 
		for: (block valueWithArguments: argumentValues)