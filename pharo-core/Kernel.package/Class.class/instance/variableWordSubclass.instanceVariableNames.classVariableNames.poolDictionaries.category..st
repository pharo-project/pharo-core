subclass creation
variableWordSubclass: t instanceVariableNames: f 
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class (the receiver) in which the subclass is to 
	have indexable word-sized nonpointer variables."
	^(ClassBuilder new)
		superclass: self
		variableWordSubclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat
