update40185
	"self new update40185"
	self withUpdateLog: '13910 Add return to Magnitude>>compareWith:ifLesser:ifEqual:ifGreater:
	https://pharo.fogbugz.com/f/cases/13910

13880 store into method argument: can not recompile standardizeDevVersionString:
	https://pharo.fogbugz.com/f/cases/13880

13881 Refactoring to PSMCPatchMorph to allow dispatching
	https://pharo.fogbugz.com/f/cases/13881

'.
	self loadTogether: self script185 merge: false.
	self flushCaches.
self cleanRepositories.
