initialize
	super initialize.
	oldClasses := OrderedCollection new.
	newClasses := OrderedCollection new.
	sharedPoolsString := ''.
	sharedVariablesString := ''.
	classSlots := {}.
	slots := {}.
	layoutClass := FixedLayout.
	superclass := Object.
	classTraitComposition := {} asTraitComposition.
	traitComposition := {} asTraitComposition.