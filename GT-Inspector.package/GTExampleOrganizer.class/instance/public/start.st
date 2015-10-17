start
	self running ifTrue: [ ^ self ].
	
	running := true.
	notifying := true.
	notifyingBeforeJobStarted := notifying.
	
	" MC will load using a Job object, we have to be quiet and fast while this happens "
	Job jobAnnouncer
		when: JobStart do: [ :anAnnouncement | self jobStarted: anAnnouncement ] for: self;
		when: JobEnd do: [ :anAnnouncement | self jobEnded: anAnnouncement ] for: self.
	
	" Observe the system for relevant changes, try to keep this cache intact "
	SystemAnnouncer uniqueInstance
		when: MethodAdded do: [ :anAnnouncement | self methodAdded: anAnnouncement ] for: self;
		when: MethodModified do: [ :anAnnouncement | self methodModified: anAnnouncement ] for: self;
		when: MethodRemoved do: [ :anAnnouncement | self methodRemoved: anAnnouncement ] for: self;
		when: ClassRemoved do: [ :anAnnouncement | self classRemoved: anAnnouncement ] for: self;
		when: ClassRenamed do: [ :anAnnouncement | self classRenamed: anAnnouncement ] for: self;
		when: CategoryRemoved do: [ :anAnnouncement | self categoryRemoved: anAnnouncement ] for: self.