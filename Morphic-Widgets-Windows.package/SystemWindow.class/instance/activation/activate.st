activate
	"Activate the owner too."
	
	self activatedModalChild ifTrue: [ ^self ].
	
	self addPaneSplittersIfNeeded.
	
	TopWindow ifNotNil: [ 
		TopWindow rememberKeyboardFocus: ActiveHand keyboardFocus
	].
	
	super activate.
	
	self isEmbedded ifFalse: [
		self basicActivate
	].	
	
	self navigateFocus.
	
	self positionModalOwner.