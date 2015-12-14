delete
	handle == nil
		ifFalse:[self apiDeleteDC: self].
	handle := nil.