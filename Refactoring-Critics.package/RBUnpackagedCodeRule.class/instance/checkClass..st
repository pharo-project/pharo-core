running
checkClass: aContext 
	(aContext selectedClass isMeta not and: [ (self packageSatisfying: [ :info | info includesSystemCategory: aContext selectedClass category ]) isNil ])
		ifTrue: [ self result addClass: aContext selectedClass ]