startMonticelloAnnouncements
	monticelloAnnouncements == true ifTrue: [ ^ self ]. " handle: nil | false | true / avoid multiple subscriptions "
	self announcer
		when: MCVersionLoaderStarted do: [ :anAnnouncement | self loadStarted: anAnnouncement ] for: self;
		when: MCVersionLoaderStopped do: [ :anAnnouncement | self loadStopped: anAnnouncement ] for: self.
	monticelloAnnouncements := true