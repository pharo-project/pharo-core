update40385
	"self new update40385"
	self withUpdateLog: '14524 WateryTheme broken, again
	https://pharo.fogbugz.com/f/cases/14524

14421 Polymorph-Tools-Diff should be packaged as Tool-Diff
	https://pharo.fogbugz.com/f/cases/14421

14526 unload GT and Glamourtests on #cleanUpForProduction
	https://pharo.fogbugz.com/f/cases/14526'.
	self loadTogether: self script385 merge: false.
	self flushCaches.
