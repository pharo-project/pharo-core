initialize
	super initialize.
	oldClasses := OrderedCollection new.
	newClasses := OrderedCollection new.
	sharedPoolsString := ''.
	sharedVariablesString := ''.
	classSlots := {}.
	slots := {}.
	superclass := Object.
	classTraitComposition := {} asTraitComposition.
	traitComposition := {} asTraitComposition.