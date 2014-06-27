update40049
	"self new update40049"
	self withUpdateLog: '13424 Clean up #priorTimeStamp
	https://pharo.fogbugz.com/f/cases/13424

13423 VersionBrowser>>#versionCountForSelector:class: not needed
	https://pharo.fogbugz.com/f/cases/13423

'.
	self loadTogether: self script49 merge: false.
	self flushCaches.
