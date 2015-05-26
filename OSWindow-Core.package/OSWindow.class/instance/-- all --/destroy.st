destroy
	OSWindowRenderThread destroyedWindow: self.
	self validHandle destroy.
	handle := nil.
	eventHandler := nil.