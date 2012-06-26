accessing
spacerWidth	
	| sRect baseRect |
	sRect := bounds.
	baseRect := self mustTakeIntoAccountCheckSpace 
		ifTrue: [self checkRectangle]
		ifFalse: [self toggleRectangle].
	(self mustTakeIntoAccountToggleSpace or: [self mustTakeIntoAccountCheckSpace])
		ifTrue: [sRect := sRect withLeft: baseRect right + container gapAfterToggle]
		ifFalse: [sRect := sRect withLeft: baseRect left].
	^ sRect left - bounds left.
