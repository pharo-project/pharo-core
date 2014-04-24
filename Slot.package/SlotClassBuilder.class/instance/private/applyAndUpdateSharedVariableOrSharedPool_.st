applyAndUpdateSharedVariableOrSharedPool: classModification
	^ self track: classModification during: [ :old :new |
		installer classDefinitionChangedFrom: old to:  new by: classModification ].