update60006
	"self new update60006"
	self withUpdateLog: '18230 Critic Browser window title set to nil after deselecting a rule
	https://pharo.fogbugz.com/f/cases/18230'.
	self loadTogether: self script60006 merge: false.
	self flushCaches.
