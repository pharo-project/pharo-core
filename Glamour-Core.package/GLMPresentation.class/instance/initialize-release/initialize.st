initialize
	super initialize.
	updateActions := OrderedCollection new.
	rawSelectionTransmissions := IdentitySet new.
	self addRawSelectionTransmissionTo: #selection