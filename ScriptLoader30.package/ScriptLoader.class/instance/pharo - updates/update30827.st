update30827
	"self new update30827"
	self withUpdateLog: '13074 Renaming a package -> Wrong MC Tags
	https://pharo.fogbugz.com/f/cases/13074

'.
	self loadTogether: self script480 merge: false.
	SystemAnnouncer restoreAllNotifications.
	self flushCaches.
