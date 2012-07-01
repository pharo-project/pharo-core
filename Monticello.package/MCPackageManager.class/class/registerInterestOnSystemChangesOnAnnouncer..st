event registration
registerInterestOnSystemChangesOnAnnouncer: anAnnouncer
	anAnnouncer on: ClassAdded, ClassModifiedClassDefinition, ClassRenamed, ClassCommented send: #classModified: to: self.
	anAnnouncer on: ClassRecategorized send: #classMoved: to: self.
	anAnnouncer on: ClassRemoved send: #classRemoved: to: self.
	anAnnouncer on: MethodAdded, MethodModified send: #methodModified: to: self.
	anAnnouncer on: MethodRecategorized send: #methodMoved: to: self.
	anAnnouncer on: MethodRemoved send: #methodRemoved: to: self.