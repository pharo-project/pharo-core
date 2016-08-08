update60173
	"self new update60173"
	self withUpdateLog: '18887 QA 3.2.4
	https://pharo.fogbugz.com/f/cases/18887'.
	self loadTogether: self script60173 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.4'.self flushCaches.
