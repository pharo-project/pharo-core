update40447
	"self new update40447"
	self withUpdateLog: '14735 Compilation bugs with the SistaV1 bytecode set.
	https://pharo.fogbugz.com/f/cases/14735

14726 Add support for loading special Class Var definitions
	https://pharo.fogbugz.com/f/cases/14726

'.
	self loadTogether: self script447 merge: false.
	self flushCaches.
self cleanRepositories.
