update40091
	"self new update40091"
	self withUpdateLog: '6765 Refactoring Extract into Temporary should modify all duplicates
	https://pharo.fogbugz.com/f/cases/6765

13565 extensions of Polymorph on Polymorph class should be folded in these classes
	https://pharo.fogbugz.com/f/cases/13565

5618 Refactoring: Cannot permutate arguments
	https://pharo.fogbugz.com/f/cases/5618

13540 Debugger: method refactoring option
	https://pharo.fogbugz.com/f/cases/13540

'.
	self loadTogether: self script91 merge: false.
	self flushCaches.
self cleanRepositories.
