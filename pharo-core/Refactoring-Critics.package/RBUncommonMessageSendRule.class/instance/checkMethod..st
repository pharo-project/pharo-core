running
checkMethod: aContext 
	aContext messages do: [ :each |
		(each isEmpty or: [ each first isUppercase or: [ literalNames includes: each ] ]) ifTrue: [
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result addSearchString: each ] ]