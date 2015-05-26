checkMethod: aMethod 
	aMethod messages do: [ :each |
		(each isEmpty or: [ each first isUppercase or: [ literalNames includes: each ] ]) ifTrue: [
			result 
				addMethod: aMethod;
				addSearchString: each ] ]