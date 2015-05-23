superclass: aClass
	variableWordSubclass: t instanceVariableNames: f 
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class in which the subclass is to 
	have indexable word-sized nonpointer variables."
	^self 
		name: t
		inEnvironment: aClass environment
		subclassOf: aClass
		type: #words
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat