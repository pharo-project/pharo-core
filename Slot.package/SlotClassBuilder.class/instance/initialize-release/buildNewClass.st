buildNewClass
	| metaclass newClass |
	metaclass := Metaclass new.
	metaclass
		superclass: self superMetaclass
		withLayoutType: FixedLayout
		slots: classSlots.

	newClass := metaclass new.
	newClass setName: name.
	
	newClass
		superclass: superclass
		withLayoutType: self layoutClass
		slots: slots.

	newClass declareClassVariables: sharedVariables.
	newClass sharing: sharedPoolsString.
	
	SystemAnnouncer uniqueInstance suspendAllWhile: [
			comment ifNotNil: [newClass classComment: comment stamp: commentStamp]].
	
	installer classAdded: newClass inCategory: category.
	
	installer installTraitComposition: traitComposition on: newClass.
	installer installTraitComposition: classTraitComposition on: metaclass.
	
	newClass slots do: [ :each | each installingIn: newClass].
	^ newClass