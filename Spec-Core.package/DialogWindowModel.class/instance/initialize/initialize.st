initialize

	super initialize.

	toolbar := OkCancelToolbar new asReactiveVariable.
	toolbar whenChangedDo: [ :t | self changed: #toolbar: with: { t } ]