update40340
	"self new update40340"
	self withUpdateLog: '14351 cleanup ClassModification: remove unused ivars
	https://pharo.fogbugz.com/f/cases/14351

14350 Replace Announcer>>#on:send:to:s senders in SUnit-UI
	https://pharo.fogbugz.com/f/cases/14350'.
	self loadTogether: self script340 merge: false.
	self flushCaches.
