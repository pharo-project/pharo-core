definesSlot: aSlot
	"Return true whether the receiver defines an instance variable named aString.
	We ask the layout to include hidden slots"
	
	^ self layout slots identityIncludes: aSlot