pharo - updates
update20609
	"self new update20609"
	self withUpdateLog: '10931 Backport 2.0: Filing out extension package in Nautilus produces empty file
	https://pharo.fogbugz.com/f/cases/10931
	
10946 HistoryCollection package is empty
	https://pharo.fogbugz.com/f/cases/10946'.
	self loadTogether: self script582 merge: false.
	ScriptLoader new unloadPackageNamed: 'HistoryCollection'.
.
	self flushCaches.
