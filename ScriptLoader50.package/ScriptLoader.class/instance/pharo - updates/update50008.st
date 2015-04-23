update50008
	"self new update50008"
	self withUpdateLog: '15384 kommiter throws DNU when browsing remotes
	https://pharo.fogbugz.com/f/cases/15384'.
	self loadTogether: self script617 merge: false.
	self flushCaches.
