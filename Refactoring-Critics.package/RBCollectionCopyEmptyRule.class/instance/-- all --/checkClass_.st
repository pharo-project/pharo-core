checkClass: aClass 
	((aClass inheritsFrom: Collection)
	and: [ aClass isVariable 
	and: [ (aClass includesSelector: #copyEmpty) not 
	and: [ aClass instVarNames isEmpty not ]]])
		ifTrue: [ result addClass: aClass ]