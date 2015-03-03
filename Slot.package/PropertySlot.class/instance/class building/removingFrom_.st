removingFrom: aClass
	"when no ProperySlots are left in the hierarchy, remove the base slot"
	| propertySlots |
	propertySlots := aClass allSlotsEverywhere select: [ :each | each class = self class].
	propertySlots size > 1 ifTrue: [ ^self].
	
	self flag: #TBD.
	"baseSlot definingClass removeSlot: baseSlot". 