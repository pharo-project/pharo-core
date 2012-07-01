running
checkClass: aContext 
	aContext selectedClass instVarNames do: [ :each | 
		each first isLowercase ifFalse: [
			result 
				addClass: aContext selectedClass
				instanceVariable: each ] ]