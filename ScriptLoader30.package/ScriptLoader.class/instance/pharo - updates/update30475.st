update30475
	"self new update30475"
	self withUpdateLog: '11855 Code Critic tests failing
	https://pharo.fogbugz.com/f/cases/11855
	
11611 Pharo3.0 DockingBarMorph>>updatePosition error (Compiler problem ?)
	https://pharo.fogbugz.com/f/cases/11611
	
11836 add #allStoresInto: instVarName of: aClass to SystemNavigation
	https://pharo.fogbugz.com/f/cases/11836
'.
	self loadTogether: self script130 merge: false.
	self flushCaches.
