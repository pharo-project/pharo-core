free
	handle == nil ifFalse:[
		self XFreeGC: self display with: self.
		handle := nil.
	].