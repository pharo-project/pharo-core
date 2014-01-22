update30714
	"self new update30714"
	self withUpdateLog: '12566 Added Behavior>>#dependentClasses
	https://pharo.fogbugz.com/f/cases/12566

'.
	self loadTogether: self script367 merge: false.
	self flushCaches.
