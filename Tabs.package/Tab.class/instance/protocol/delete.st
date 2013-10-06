delete

	super delete.
	retrievingProcess ifNotNil: [ retrievingProcess terminate ].
	self triggerEvent: #tabDeleted with: self