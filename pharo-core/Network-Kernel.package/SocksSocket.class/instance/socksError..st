private
socksError: errorString
	self close; destroy.
	self error: errorString