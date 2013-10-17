checkClass: aContext 
	| allSubclasses |
	allSubclasses := aContext selectedClass withAllSubclasses.
	aContext selectedClass instVarNames do: 
		[ :each | 
		allSubclasses 
			detect: [ :class | (class whichSelectorsAccess: each) isEmpty not ]
			ifNone: 
				[ result 
					addClass: aContext selectedClass
					instanceVariable: each ] ].
	aContext selectedClass isMeta ifFalse: 
		[ aContext selectedClass classPool associationsDo: 
			[ :each | 
			(aContext uses: each) ifFalse: 
				[ result 
					addClass: aContext selectedClass
					classVariable: each key ] ] ]