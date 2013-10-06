applyAndUpdateSuperclass: classModification
	^ self track: classModification during: [ :old :new |
		client superclassChangedFrom: old to: new by: classModification ]