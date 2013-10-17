classSearchInEnvironment: anEnvironment
	| classes |
	classes :=  anEnvironment allClassesAndTraits sorted: [ :a :b| a name <= b name ].
	^ self classSearchIn: classes.