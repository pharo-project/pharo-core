update40614
	"self new update40614"
	self withUpdateLog: '15284 [Backport 4.0]: 15384 kommiter throws DNU when browsing remotes
	https://pharo.fogbugz.com/f/cases/15284'.
	self loadTogether: self script614 merge: false.
	self flushCaches.
