update50253
	"self new update50253"
	self withUpdateLog: '16316 Form should not rgisterFileReader inside the Graphics package
	https://pharo.fogbugz.com/f/cases/16316

16312 Fix some references to the old compiler
	https://pharo.fogbugz.com/f/cases/16312

16080 RBImplementedButNotSent always true
	https://pharo.fogbugz.com/f/cases/16080

16306 Clear undo cache in Nautilus when changing source code
	https://pharo.fogbugz.com/f/cases/16306'.
	self loadTogether: self script50253 merge: false.
	self flushCaches.
