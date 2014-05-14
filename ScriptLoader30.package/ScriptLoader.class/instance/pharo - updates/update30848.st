update30848
	"self new update30848"
	self withUpdateLog: '13261 rpackage renameTo: is renaming all classes, not just defined ones
	https://pharo.fogbugz.com/f/cases/13261

'.
	self loadTogether: self script110 merge: false.
	self flushCaches.
