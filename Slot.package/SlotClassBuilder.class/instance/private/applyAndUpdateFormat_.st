applyAndUpdateFormat: classModification
	^ self track: classModification during: [ :old :new |
		client formatChangedFrom: old to: new by: classModification ].