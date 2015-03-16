update40560
	"self new update40560"
	self withUpdateLog: '14383 VersionnerProjectBrowser>>example does not work
	https://pharo.fogbugz.com/f/cases/14383

15133 #downloadSources references PharoV30.sources
	https://pharo.fogbugz.com/f/cases/15133'.
	self loadTogether: self script560 merge: false.
	
ScriptLoader new deletePackage: 'Zinc-System-Support'.
	self flushCaches.
