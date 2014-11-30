update40391
	"self new update40391"
	self withUpdateLog: '14549 Clean Critics and RBRule related information
	https://pharo.fogbugz.com/f/cases/14549'.
	self loadTogether: self script391 merge: false.
	self flushCaches.
