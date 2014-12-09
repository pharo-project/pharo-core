update
	super update.
	
	self updateVisible.
	self band width: self width.
	self preventOverscrolling.
	self band doLayout