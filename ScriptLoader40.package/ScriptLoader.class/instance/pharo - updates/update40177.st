update40177
	"self new update40177"
	self withUpdateLog: '13883 RBConfigurableFormatter retain blank lines between statements and comments
	https://pharo.fogbugz.com/f/cases/13883

13839 3 tests failing due to #stepGlobal call to Transcript
	https://pharo.fogbugz.com/f/cases/13839

13881 Refactoring to PSMCPatchMorph to allow dispatching
	https://pharo.fogbugz.com/f/cases/13881

'.
	self loadTogether: self script177 merge: false.
	self flushCaches.
self cleanRepositories.
