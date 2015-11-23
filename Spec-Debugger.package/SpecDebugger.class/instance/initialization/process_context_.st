process: aProcess context: aContext
	self session: (self class spanNewSessionForContext: aContext fromProcess: aProcess)