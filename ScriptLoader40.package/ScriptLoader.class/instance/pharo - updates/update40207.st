update40207
	"self new update40207"
	self withUpdateLog: '13937 Unused methods in Slot package
	https://pharo.fogbugz.com/f/cases/13937

13961 Job examples should be executable
	https://pharo.fogbugz.com/f/cases/13961
	
13965 Clean method announcements : fix Monticello-Tests bug
	https://pharo.fogbugz.com/f/cases/13965'.
	self loadTogether: self script207 merge: false.
	self flushCaches.
self cleanRepositories.
