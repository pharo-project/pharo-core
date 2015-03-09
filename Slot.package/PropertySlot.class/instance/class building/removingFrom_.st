removingFrom: aClass
	"when no ProperySlots are left in the hierarchy, remove the base slot"
	| propertySlots |
	propertySlots := aClass allSlotsEverywhere select: [ :each | each class = self class].
	propertySlots size > 1 ifTrue: [ ^self].
	self flag: #TBD.
	"using #definingClass does not work as aClass is not in the Smalltalk dict anymore.
	I think we need to remove from defining class if not nil, else from aClass?"
	"baseSlot definingClass removeSlot: baseSlot."