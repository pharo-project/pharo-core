subclass: t instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class (the receiver)."
	| class |	
	class := self classBuilder	
		name: t
		inEnvironment: self environment
		subclassOf: self
		type: self typeOfClass
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.	
	class ifNotNil:  [ class setTraitComposition: {} asTraitComposition ].
	^ class 