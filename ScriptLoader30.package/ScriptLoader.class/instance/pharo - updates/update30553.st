update30553
	"self new update30553"
	self withUpdateLog: '- Issue 12091:
	Smart Suggestions is not working in message browser and debugger anymore
	https://pharo.fogbugz.com/f/cases/12091
	
- Issue 12100
	Add shortcut for code formatting
	https://pharo.fogbugz.com/f/cases/12100'.
	self loadTogether: self script209 merge: false.
	self flushCaches.
