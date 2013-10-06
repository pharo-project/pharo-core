update30434
	"self new update30434"
	self withUpdateLog: '7130 Scrollbars on the left. Nobody needed it for years --> remove
	https://pharo.fogbugz.com/f/cases/7130'.
	self loadTogether: self script113 merge: false.
	self flushCaches.
