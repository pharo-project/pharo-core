update40597
	"self new update40597"
	self withUpdateLog: '15308 Bugfix and test for BooleanSlot
	https://pharo.fogbugz.com/f/cases/15308'.
	self loadTogether: self script597 merge: false.
	self flushCaches.
