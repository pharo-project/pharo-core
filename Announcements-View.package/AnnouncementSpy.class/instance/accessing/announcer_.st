announcer: anAnnouncer
	announcer ifNotNil: [ announcer unsubscribe: self ].
	announcer := anAnnouncer.
	announcer ifNotNil: [ announcer subscribe: Announcement send: #announce: to: self ]