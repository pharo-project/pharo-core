update30480
	"self new update30480"
	self withUpdateLog: '11865 Fixing Author annoying resetting behavior
	https://pharo.fogbugz.com/f/cases/11865'.
	self loadTogether: self script135 merge: false.
	self flushCaches.
