update60254
	"self new update60254"
	self withUpdateLog: '19178 TabBar selectLastTab is not working
	https://pharo.fogbugz.com/f/cases/19178

19180 Var lookup broken
	https://pharo.fogbugz.com/f/cases/19180'.
	self loadTogether: self script60254 merge: false.
	self flushCaches.
