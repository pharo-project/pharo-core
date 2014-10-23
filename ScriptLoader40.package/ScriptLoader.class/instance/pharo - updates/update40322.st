update40322
	"self new update40322"
	self withUpdateLog: '14298 pre for 14297 Kernel fixes for Spur
	https://pharo.fogbugz.com/f/cases/14298'.
	self loadTogether: self script322 merge: false.
	self flushCaches.
