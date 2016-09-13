update60220
	"self new update60220"
	self withUpdateLog: '19086 do not allow expressions as pragma arguments
	https://pharo.fogbugz.com/f/cases/19086'.
	self loadTogether: self script60220 merge: false.
	self flushCaches.
