ensureChangeLog
	^ self hasChangeLog 
		ifFalse: [ self defineChangeLogTemplate ]