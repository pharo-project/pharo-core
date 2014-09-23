sharedVariableOrSharedPoolChangedFrom: oldClass to: newClass by: classModification 

	self 
		classDefinitionChangedFrom: oldClass 
		to: newClass 
		by: classModification.
	
	"Update subclasses. No need to propagate the modification to them."
	oldClass subclasses do: [ :each |
		each superclass: newClass.
		newClass addSubclass: each.
		each layout slotScope ifNotEmpty: [ :scope | scope parentScope: newClass layout slotScope ] ].