initialization
delete
	closeWindowSelector ifNotNil:[model perform: closeWindowSelector].
	super delete.
