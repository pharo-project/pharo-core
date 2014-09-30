updateScrollbars
	super updateScrollbars.
	self wrapped
		ifTrue: [ self fitScrollTargetWidth ]