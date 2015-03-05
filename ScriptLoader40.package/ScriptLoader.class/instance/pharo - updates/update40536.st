update40536
	"self new update40536"
	self withUpdateLog: '15065 Versionner should use #label: instead of deprecated #text:
	https://pharo.fogbugz.com/f/cases/15065

15063 Replace senders of String>>#subStrings in SUnit-Tests
	https://pharo.fogbugz.com/f/cases/15063

15062 remove writeToGlobal:
	https://pharo.fogbugz.com/f/cases/15062'.
	self loadTogether: self script536 merge: false.
	self flushCaches.
