update50762
	"self new update50762"
	self withUpdateLog: '19205 [Backport] Pharo 5: Enable / Disable options in context Menu in FastTable
	https://pharo.fogbugz.com/f/cases/19205'.
	self loadTogether: self script50762 merge: false.
	self loadConfiguration: 'GlamourCore' version: '4.19.1'.self flushCaches.
