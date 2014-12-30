update40426
	"self new update40426"
	self withUpdateLog: '14664 CompiledMethod and Context API should support negative compiled method header
	https://pharo.fogbugz.com/f/cases/14664

'.
	self loadTogether: self script426 merge: false.
	self flushCaches.
self cleanRepositories.
