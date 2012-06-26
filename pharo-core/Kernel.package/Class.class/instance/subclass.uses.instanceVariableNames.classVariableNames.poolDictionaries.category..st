subclass creation
subclass: t uses: aTraitCompositionOrArray instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	| newClass copyOfOldClass |
	copyOfOldClass := self copy.
	newClass := self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
			
	newClass setTraitComposition: aTraitCompositionOrArray asTraitComposition.
	SystemChangeNotifier uniqueInstance
		classDefinitionChangedFrom: copyOfOldClass to: newClass.
	^newClass