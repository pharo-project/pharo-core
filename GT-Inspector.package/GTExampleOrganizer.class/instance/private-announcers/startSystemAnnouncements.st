startSystemAnnouncements
	systemAnnouncements == true ifTrue: [ ^ self ]. " handle: nil | false | true / avoid multiple subscriptions "
	self announcer
		when: MethodAdded do: [ :anAnnouncement | self methodAdded: anAnnouncement ] for: self;
		when: MethodModified do: [ :anAnnouncement | self methodModified: anAnnouncement ] for: self;
		when: MethodRemoved do: [ :anAnnouncement | self methodRemoved: anAnnouncement ] for: self;
		when: ClassRemoved do: [ :anAnnouncement | self classRemoved: anAnnouncement ] for: self;
		when: ClassRenamed do: [ :anAnnouncement | self classRenamed: anAnnouncement ] for: self;
		when: CategoryRemoved do: [ :anAnnouncement | self categoryRemoved: anAnnouncement ] for: self.
	systemAnnouncements := true