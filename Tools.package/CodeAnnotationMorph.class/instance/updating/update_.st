update: anAspect
	super update: anAspect.
	anAspect == #contents ifFalse: [ ^self ].
	self syncContents.
