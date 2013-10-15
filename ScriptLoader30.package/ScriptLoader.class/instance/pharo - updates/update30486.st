update30486
	"self new update30486"
	self withUpdateLog: '11874 Deadly Delay and Startup Interaction
	https://pharo.fogbugz.com/f/cases/11874'.
	self loadTogether: self script141 merge: false.
	self flushCaches.
