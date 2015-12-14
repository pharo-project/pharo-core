testBlitToAndFromExternalForm
	"Ensure that we can blit to/from all 4 permutatations of Form and ExternalForm."
	| source external1 external2 destination |
	source := Cursor wait asCursorForm asFormOfDepth: 32.
	destination := Form extent: source extent depth: 32.
	external1 := ExternalForm extent: source extent depth: 32.
	external1 allocateSpace.
	external2 := ExternalForm extent: source extent depth: 32.
	external2 allocateSpace.
	self shouldnt: [source bits = destination bits].
	source displayOn: external1.
	external1 displayOn: external2.
	external2 displayOn: destination.
	self should: [source bits = destination bits].