terminate

	process ifNotNil: [ process terminate. process := nil ].
	callback := nil.