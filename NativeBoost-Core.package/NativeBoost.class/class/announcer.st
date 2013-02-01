accessing
announcer
	^ NBAnnouncer ifNil: [ NBAnnouncer := Announcer new ].