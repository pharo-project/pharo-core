update40526
	"self new update40526"
	self withUpdateLog: '15005 New Configuration Of Athens 3.0 (AthensCanvasWrapper)
	https://pharo.fogbugz.com/f/cases/15005'.
	self loadTogether: self script526 merge: false.
	self loadConfiguration: 'Athens' version: '3.0'.self flushCaches.
