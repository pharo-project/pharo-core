testDangerousClassesConditions

	| compactClassesArrayItem specialObjectsArrayItem |
	
	compactClassesArrayItem := ( (Smalltalk compactClassesArray copyWithout: Smalltalk specialObjectsArray) select: [ :x | x isClass ] ) anyOne name.
	specialObjectsArrayItem := ( (Smalltalk specialObjectsArray copyWithout: Smalltalk compactClassesArray) select: [ :x | x isClass ] ) anyOne name.

	self assert: (DangerousClassNotifier tooDangerousClasses includes: #ProtoObject).
	self assert: (DangerousClassNotifier shouldNotBeRedefined: compactClassesArrayItem). 
	self assert: (DangerousClassNotifier shouldNotBeRedefined: specialObjectsArrayItem). 