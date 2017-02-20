update50769
	"self new update50769"
	self withUpdateLog: '19310 Backport Pharo 5.0: Wrong border after dragging out of a window group (backport 19299)
	https://pharo.fogbugz.com/f/cases/19310'.
	self loadTogether: self script50769 merge: false.
	self flushCaches.
