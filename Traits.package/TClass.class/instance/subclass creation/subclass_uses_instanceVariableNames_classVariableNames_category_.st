subclass: aTraitName uses: aTraitCompositionOrArray instanceVariableNames: instVarNames classVariableNames: classVarNames category: cat 
	"Added to allow for a simplified subclass creation experience. "
	| newClass copyOfOldClass |
	
	copyOfOldClass := self copy.
	newClass := self
		subclass: aTraitName
		instanceVariableNames: instVarNames
		classVariableNames: classVarNames
		poolDictionaries: ''
		category: cat.
			
	newClass setTraitComposition: aTraitCompositionOrArray asTraitComposition.
	SystemAnnouncer uniqueInstance
		classDefinitionChangedFrom: copyOfOldClass to: newClass.
	^newClass