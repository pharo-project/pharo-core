updating
update: anAspect
	super update: anAspect.
	anAspect == #editSelection ifFalse: [ ^self ].
	self hideOrShowPane