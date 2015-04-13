update40606
	"self new update40606"
	self withUpdateLog: '14606 Cant see some variables values while debugging closure
	https://pharo.fogbugz.com/f/cases/14606'.
	self loadTogether: self script606 merge: false.
	self flushCaches.
