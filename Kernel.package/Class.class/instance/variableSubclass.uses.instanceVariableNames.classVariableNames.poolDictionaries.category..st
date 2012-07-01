subclass creation
variableSubclass: t uses: aTraitCompositionOrArray instanceVariableNames: f 
	classVariableNames: d poolDictionaries: s category: cat
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class (the receiver) in which the subclass is to 
	have indexable pointer variables."
	
	| newClass copyOfOldClass |
	copyOfOldClass := self copy.
	newClass := self
		variableSubclass: t 
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
	
	newClass setTraitComposition: aTraitCompositionOrArray asTraitComposition.
	SystemChangeNotifier uniqueInstance
		classDefinitionChangedFrom: copyOfOldClass to: newClass.
	^newClass	