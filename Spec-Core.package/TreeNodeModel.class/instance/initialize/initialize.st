initialize

	super initialize.

	children := [ self container childrenFor: self content ] asValueHolder.
	content := nil asValueHolder.
	icon := nil asValueHolder.
	container := nil asValueHolder.
	matchTokenFilter := [ :aFilter | false ] asValueHolder