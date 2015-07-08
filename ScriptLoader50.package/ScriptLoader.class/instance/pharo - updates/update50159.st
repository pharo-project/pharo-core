update50159
	"self new update50159"
	self withUpdateLog: '15784 clean Nautilus Plugins
	https://pharo.fogbugz.com/f/cases/15784'.
	self loadTogether: self script50159 merge: false.
	self flushCaches.
