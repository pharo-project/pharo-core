accessing
initialize

	super initialize.
	index := 0 asValueHolder.
	selection := nil asValueHolder.
	
	index whenChangedSend: #contentsChanged to: self.
	selection whenChangedSend: #contentsChanged to: self.