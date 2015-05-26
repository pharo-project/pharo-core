selectPreviousDueTo: anEventType

	self selected ifNil: [ ^ self ].
	self selected: self selected previousLink dueTo: anEventType