update40133
	"self new update40133"
	self withUpdateLog: '13672 Failing test: RBSmalllintTest>>#testConsistencyCheck
	https://pharo.fogbugz.com/f/cases/13672

13673 Failing test: ReleaseTest>>#testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/13673

13716 #testIssue6406 failing
	https://pharo.fogbugz.com/f/cases/13716

13715 Port to 4: 13626 SelectorException>>signalFor:In: does not understand object:
	https://pharo.fogbugz.com/f/cases/13715

'.
	self loadTogether: self script133 merge: false.
	self flushCaches.
self cleanRepositories.
