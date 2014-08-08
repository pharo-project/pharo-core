update40162
	"self new update40162"
	self withUpdateLog: '13801 BlockClosureTest failing
	https://pharo.fogbugz.com/f/cases/13801

13799 Forward port 4: 13796 DNU ReadWriteStream>>fileIn in SmalltalkEditor>>fileItIn
	https://pharo.fogbugz.com/f/cases/13799

13804 #acceptBasic leads to #mustBeBoolean error (which is catcher by an on: Error do:[]]
	https://pharo.fogbugz.com/f/cases/13804

13803 Inspecting a Dictionary is broken
	https://pharo.fogbugz.com/f/cases/13803

13802 failing test: testLocalMethodsOfTheClassShouldNotBeRepeatedInItsTraits
	https://pharo.fogbugz.com/f/cases/13802

'.
	self loadTogether: self script162 merge: false.
	self flushCaches.
self cleanRepositories.
