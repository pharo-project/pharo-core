applyAndUpdateSlots: classModification
	^ self track: classModification during: [ :old :new |
		client slotsChangedFrom: old to: new by: classModification ].