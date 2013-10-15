event-handling
closeIfNotNeeded: aMorph

	(chooser isNil not and: [ chooser hasKeyboardFocus or: [ aMorph hasKeyboardFocus ] ]) ifFalse: [ self closeChooser ]