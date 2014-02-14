update30763
	"self new update30763"
	self withUpdateLog: '12508 Really strange error with Komitter on windows
	https://pharo.fogbugz.com/f/cases/12508

12875 Still some problems with #sourceNode
	https://pharo.fogbugz.com/f/cases/12875

12884 Cannot add a class to a dynamic group with drag and drop
	https://pharo.fogbugz.com/f/cases/12884

'.
	self loadTogether: self script416 merge: false.
	self flushCaches.
