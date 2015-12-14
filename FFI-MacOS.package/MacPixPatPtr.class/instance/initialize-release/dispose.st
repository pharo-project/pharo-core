dispose
	handle == nil ifFalse:[
		self apiDisposePixPat: self.
		handle := nil.
	].