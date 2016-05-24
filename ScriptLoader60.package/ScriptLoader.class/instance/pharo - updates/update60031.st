update60031
	"self new update60031"
	self withUpdateLog: '18212 PharoTutorial class missing
	https://pharo.fogbugz.com/f/cases/18212

15418 a RBEnvironment from #classVarRefsTo: does not list meta classes
	https://pharo.fogbugz.com/f/cases/15418

18312 inline parameter refactoring broken
	https://pharo.fogbugz.com/f/cases/18312'.
	self loadTogether: self script60031 merge: false.
	self flushCaches.
