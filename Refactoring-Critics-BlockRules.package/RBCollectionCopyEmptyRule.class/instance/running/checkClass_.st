checkClass: aContext 
	((aContext selectedClass inheritsFrom: Collection)
	and: [ aContext selectedClass isVariable 
	and: [ (aContext selectedClass includesSelector: #copyEmpty) not 
	and: [ aContext selectedClass instVarNames isEmpty not ]]])
		ifTrue: [ result addClass: aContext selectedClass ]