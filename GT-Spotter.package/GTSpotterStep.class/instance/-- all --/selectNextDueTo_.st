selectNextDueTo: anEventType
	
	self selected ifNil: [ ^ self ].
	self selected: self selected nextLink dueTo: anEventType
	
	