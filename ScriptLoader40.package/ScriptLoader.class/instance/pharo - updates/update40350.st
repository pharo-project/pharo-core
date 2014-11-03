update40350
	"self new update40350"
	self withUpdateLog: '14373 Replace Announcer>>#on:send:to:s senders in System-Support
	https://pharo.fogbugz.com/f/cases/14373

14372 Replace Announcer>>#on:send:to:s senders in System-Changes
	https://pharo.fogbugz.com/f/cases/14372

14377 FileOut creates invalid comment entries for classes with class side methods
	https://pharo.fogbugz.com/f/cases/14377'.
	self loadTogether: self script350 merge: false.
	self flushCaches.
