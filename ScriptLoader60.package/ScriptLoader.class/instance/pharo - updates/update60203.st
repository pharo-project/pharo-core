update60203
	"self new update60203"
	self withUpdateLog: '19030 SystemAnnouncer restoreAllNotifications produces memory leak
	https://pharo.fogbugz.com/f/cases/19030

19006 Add support for the file sync primitive to the FileSystem API
	https://pharo.fogbugz.com/f/cases/19006'.
	self loadTogether: self script60203 merge: false.
	self flushCaches.
