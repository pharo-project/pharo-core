delete

	super delete.
	retrievingProcess terminate.
	self triggerEvent: #tabDeleted with: self