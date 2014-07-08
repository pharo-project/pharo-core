update40075
	"self new update40075"
	self withUpdateLog: '13509 PSMCSystemSettings --> move to class
	https://pharo.fogbugz.com/f/cases/13509

13511 Move CompilerSettings to OpalCompiler package
	https://pharo.fogbugz.com/f/cases/13511

13507 ExtendedTabPanelBorder is dead code
	https://pharo.fogbugz.com/f/cases/13507

13512 Move BalloonCanvas to Balllon Package
	https://pharo.fogbugz.com/f/cases/13512

'.
	self loadTogether: self script75 merge: false.
	self flushCaches.
self cleanRepositories.
