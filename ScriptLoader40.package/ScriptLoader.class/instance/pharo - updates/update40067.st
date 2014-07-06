update40067
	"self new update40067"
	self withUpdateLog: '13482 (Untitled)fix failing opal tests
	https://pharo.fogbugz.com/f/cases/13482

13338 FileDirectoryWrapper should be moved to the package containing FileList
	https://pharo.fogbugz.com/f/cases/13338

13476 Move TSortable to Collections-Abstract
	https://pharo.fogbugz.com/f/cases/13476

'.
	self loadTogether: self script67 merge: false.
	ScriptLoader new deletePackage: 'Collections-Traits'.
.
	self flushCaches.
self cleanRepositories.
