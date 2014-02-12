update30754
	"self new update30754"
	self withUpdateLog: '12847 update Versionner
	https://pharo.fogbugz.com/f/cases/12847/fix-rules-violations'.
	self loadTogether: self script407 merge: false.
	(MCPackage named: #'Versionner-Help') unload.
	self flushCaches.
