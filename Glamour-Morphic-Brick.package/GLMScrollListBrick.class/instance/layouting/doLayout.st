doLayout
	
	self layoutPolicy layoutFloating: self verticalScrollbar in: self withArguments: nil.
	self update.
	self verticalScrollbar update.