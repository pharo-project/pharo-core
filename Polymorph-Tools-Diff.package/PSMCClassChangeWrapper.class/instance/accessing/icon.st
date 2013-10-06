icon
	"Answer a form with an icon to represent the receiver"
	
	self isConflict ifTrue: [
		self localChosen ifTrue: [ ^ Smalltalk ui icons smallBackIconGray ] ].
	^ super icon