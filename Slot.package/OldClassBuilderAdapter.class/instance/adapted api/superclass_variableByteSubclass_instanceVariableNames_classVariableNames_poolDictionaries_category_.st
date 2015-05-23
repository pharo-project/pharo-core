superclass: aClass
	variableByteSubclass: t instanceVariableNames: f 
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class in which the subclass is to 
	have indexable byte-sized nonpointer variables."
	| oldClassOrNil actualType |
	oldClassOrNil := aClass environment at: t ifAbsent:[nil].
	actualType := (oldClassOrNil notNil
				   and: [oldClassOrNil typeOfClass == #compiledMethod])
					ifTrue: [#compiledMethod]
					ifFalse: [#bytes].
	^self 
		name: t
		inEnvironment: aClass environment
		subclassOf: aClass
		type: actualType
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat