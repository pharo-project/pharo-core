update30667
	"self new update30667"
	self withUpdateLog: '12223 Nautilus loses changes
	https://pharo.fogbugz.com/f/cases/12223
	
12536 Runs tests on test methods with nonzero arguments
	https://pharo.fogbugz.com/f/cases/12536
	
12529 Running tests takes to long
	https://pharo.fogbugz.com/f/cases/12529'.
	self loadTogether: self script320 merge: false.
	Smalltalk image recompile.
.
	self flushCaches.
