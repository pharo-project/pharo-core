sharedVariableOrSharedPoolChangedFrom: oldClass to: newClass by: classModification 

	self 
		classDefinitionChangedFrom: oldClass 
		to: newClass 
		by: classModification.
	
	"Adopt sub-hierarchies. No need to propagate the modification to them."
	oldClass subclasses do: [ :each | 
		each superclass: newClass.
		newClass addSubclass: each ]