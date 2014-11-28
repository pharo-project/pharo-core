update40388
	"self new update40388"
	self withUpdateLog: '14482 Extract InputEvent classes to their own package
	https://pharo.fogbugz.com/f/cases/14482

14537 remove empty package Polymorph-Tools-Diff
	https://pharo.fogbugz.com/f/cases
	'.
	self loadTogether: self script388 merge: false.
	ScriptLoader new deletePackage: 'Polymorph-Tools-Diff'.
	self flushCaches.
self cleanRepositories.
