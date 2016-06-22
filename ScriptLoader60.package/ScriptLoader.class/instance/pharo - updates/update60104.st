update60104
	"self new update60104"
	self withUpdateLog: '18551 RBSmalllintTest>>#testBadMessage is failing
	https://pharo.fogbugz.com/f/cases/18551

18558 MNU on deselecting message browser entry 
	https://pharo.fogbugz.com/f/cases/18558

18559 OCASTSemanticAnalyzer calls "name" on RBParseErrorNode
	https://pharo.fogbugz.com/f/cases/18559

18561 DNU when EpLostChangesDetector opens browser in non-interactive mode
	https://pharo.fogbugz.com/f/cases/18561'.
	self loadTogether: self script60104 merge: false.
	self loadConfiguration: 'Epicea' version: '7.93.p6'.self flushCaches.
