wireEvents
	| textEditor |
	
	textEditor := editor controller.
	
	textEditor announcer on: TxDeletedTextAnnouncement send: #onTextDeleted: to: self.
	textEditor announcer on: TxInsertedTextAnnouncement send: #onTextInserted: to: self.