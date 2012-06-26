running
checkClass: aContext 
	(aContext selectedClass isVariable and: [ (aContext selectedClass includesSelector: #copyEmpty) not and: [ aContext selectedClass instVarNames isEmpty not and: [ aContext selectedClass inheritsFrom: Collection ] ] ])
		ifTrue: [ result addClass: aContext selectedClass ]