spacerWidth	
	| sRect baseRect |
	sRect := bounds.
	baseRect := self mustTakeIntoAccountCheckSpace 
		ifTrue: [self checkRectangle]
		ifFalse: [self toggleRectangle].
	^ (self mustTakeIntoAccountToggleSpace or: [self mustTakeIntoAccountCheckSpace])
		ifTrue: [ baseRect right + container gapAfterToggle - bounds left]
		ifFalse: [ baseRect left - bounds left].
 