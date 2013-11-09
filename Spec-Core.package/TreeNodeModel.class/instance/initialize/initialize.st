initialize

	super initialize.

	children := OrderedCollection new asValueHolder.
	content := nil asValueHolder.
	icon := nil asValueHolder.
	container := nil asValueHolder.
	matchTokenFilter := [ :aFilter | false ] asValueHolder