update40255
	"self new update40255"
	self withUpdateLog: '14070 OSWindow integration part2
	https://pharo.fogbugz.com/f/cases/14070
'.
	self loadTogether: self script255 merge: false.
	self flushCaches.
self cleanRepositories.
