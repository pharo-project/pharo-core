backgroundColor
	
	^backgroundColor ifNil: [ 
		"stringMorphs might be alive when merged"
		backgroundColor := Color transparent ]