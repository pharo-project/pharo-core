historyAnnouncer
	^ HistoryAnnouncer ifNil: [  HistoryAnnouncer := Announcer new ]