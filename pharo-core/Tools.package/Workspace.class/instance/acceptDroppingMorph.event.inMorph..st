drag and drop
acceptDroppingMorph: dropee event: evt inMorph: targetMorph 
	"Return the dropee to its old position, and add a reference to it at the cursor point."

	| bindingName externalName |
	externalName := dropee externalName.
	externalName := externalName isOctetString
		ifTrue: [externalName] ifFalse: ['a' , externalName].
	bindingName := externalName translateToLowercase, dropee identityHash printString.
	targetMorph correctSelectionWithString: bindingName, ' '.
	(self bindingOf: bindingName) value: dropee.
	dropee rejectDropMorphEvent: evt.
	^ true "success"
