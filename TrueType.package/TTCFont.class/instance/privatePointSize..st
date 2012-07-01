accessing
privatePointSize: aNumber 
	pointSize = aNumber
		ifFalse: [pointSize := aNumber.
			self flushCache]