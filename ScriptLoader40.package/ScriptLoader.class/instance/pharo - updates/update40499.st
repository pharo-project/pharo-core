update40499
	"self new update40499"
	self withUpdateLog: '14971 MorphicTransform: Better Argument Names
	https://pharo.fogbugz.com/f/cases/14971

14961 instantiation is misspelled in PharoSyntaxTutorial
	https://pharo.fogbugz.com/f/cases/14961

14947 Missing allChildrenMatching:
	https://pharo.fogbugz.com/f/cases/14947

'.
	self loadTogether: self script499 merge: false.
	self flushCaches.
self cleanRepositories.
