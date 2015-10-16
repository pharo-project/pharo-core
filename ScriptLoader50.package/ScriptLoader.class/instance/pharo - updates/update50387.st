update50387
	"self new update50387"
	self withUpdateLog: '16793 Minor protocol cleanup in SystemWindow for taskbar related items
	https://pharo.fogbugz.com/f/cases/16793

16777 Querying block with many temps fails
	https://pharo.fogbugz.com/f/cases/16777'.
	self loadTogether: self script50387 merge: false.
	self flushCaches.
