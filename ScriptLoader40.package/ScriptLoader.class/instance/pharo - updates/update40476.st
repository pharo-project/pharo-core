update40476
	"self new update40476"
	self withUpdateLog: '12597 Update TextAnchor class comment
	https://pharo.fogbugz.com/f/cases/12597

14853 Improve AbstractCache plain access
	https://pharo.fogbugz.com/f/cases/14853

14814 NewVersionBrowser api not updated in all the client packages
	https://pharo.fogbugz.com/f/cases/14814'.
	self loadTogether: self script476 merge: false.
	self flushCaches.
