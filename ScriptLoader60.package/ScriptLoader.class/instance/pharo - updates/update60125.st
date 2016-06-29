update60125
	"self new update60125"
	self withUpdateLog: '18640 Rule for "Dead" Blocks
	https://pharo.fogbugz.com/f/cases/18640

18613 New RBMethodNode method to return the selector and argument names portion of a method
	https://pharo.fogbugz.com/f/cases/18613

18600 create "pharo-local" to concentrate pharo local files (package-cache, epicea-sessions, etc.)
	https://pharo.fogbugz.com/f/cases/18600'.
	self loadTogether: self script60125 merge: false.
	self flushCaches.
