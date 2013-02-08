event registration
registerInterestOnSystemChangesOnAnnouncer: anAnnouncer
	anAnnouncer private on: ClassAdded, ClassModifiedClassDefinition, ClassRenamed, ClassCommented send: #classModified: to: self.
	anAnnouncer private on: ClassRepackaged send: #classMoved: to: self.
	anAnnouncer private on: ClassRemoved send: #classRemoved: to: self.
	anAnnouncer on: MethodAdded, MethodModified send: #methodModified: to: self.
	anAnnouncer on: MethodRepackaged send: #methodMoved: to: self.
	anAnnouncer on: MethodRemoved send: #methodRemoved: to: self.