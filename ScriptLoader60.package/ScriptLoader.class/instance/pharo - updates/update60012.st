update60012
	"self new update60012"
	self withUpdateLog: '18228 Remove dependency of FinderUI in WorldState >>#mostUsedToolsOn:
	https://pharo.fogbugz.com/f/cases/18228'.
	self loadTogether: self script60012 merge: false.
	self flushCaches.
