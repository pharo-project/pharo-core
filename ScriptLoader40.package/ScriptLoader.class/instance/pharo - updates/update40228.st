update40228
	"self new update40228"
	self withUpdateLog: '14009 RBAddClassRefactoringTest should be moved close to the other refactoring tests
	https://pharo.fogbugz.com/f/cases/14009

14007 DebuggerModelTest should be moved out of debugger package
	https://pharo.fogbugz.com/f/cases/14007

14017 No senders of analyzeItemLabels
	https://pharo.fogbugz.com/f/cases/14017

14022 Infinite loop in simple subclasses of SequenceableCollection
	https://pharo.fogbugz.com/f/cases/14022

'.
	self loadTogether: self script228 merge: false.
	self flushCaches.
self cleanRepositories.
