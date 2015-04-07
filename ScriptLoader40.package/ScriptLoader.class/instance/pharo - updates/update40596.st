update40596
	"self new update40596"
	self withUpdateLog: '15306 EyeInspectorTest pollutes world with left open windows
	https://pharo.fogbugz.com/f/cases/15306

15282 Cannot run the image with the new bytecode set.
	https://pharo.fogbugz.com/f/cases/15282

'.
	self loadTogether: self script596 merge: false.
	self flushCaches.
self cleanRepositories.
