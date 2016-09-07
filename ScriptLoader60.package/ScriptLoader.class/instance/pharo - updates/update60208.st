update60208
	"self new update60208"
	self withUpdateLog: '19052 rub shoutdecorator should not raise a debugger
	https://pharo.fogbugz.com/f/cases/19052

19054 QA 3.2.7
	https://pharo.fogbugz.com/f/cases/19054'.
	self loadTogether: self script60208 merge: false.
	self loadConfiguration: 'FlatQA' version: 'v3.2.7'.self flushCaches.
