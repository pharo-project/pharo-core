as yet unclassified
concreteSubclasses
	^ self allSubclasses reject: [:c | c isAbstract]