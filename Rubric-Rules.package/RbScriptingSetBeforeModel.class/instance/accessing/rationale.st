rationale

	^ 'Methods #', (self scriptingMethods joinUsing: ', #'),
	' have to be called after #model: or they will not work'