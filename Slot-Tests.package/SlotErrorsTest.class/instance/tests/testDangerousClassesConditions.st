testDangerousClassesConditions

	| specialObjectsArrayItem |
	
	specialObjectsArrayItem := (Smalltalk specialObjectsArray select: [ :x | x isClass ]) anyOne name.

	self assert: (DangerousClassNotifier tooDangerousClasses includes: #ProtoObject).
	self assert: (DangerousClassNotifier shouldNotBeRedefined: specialObjectsArrayItem). 