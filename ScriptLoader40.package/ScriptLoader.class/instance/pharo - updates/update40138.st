update40138
	"self new update40138"
	self withUpdateLog: '13728 Decompiler and OCDecompiler cannot decompile returning loops
	https://pharo.fogbugz.com/f/cases/13728

13731 RGFactory cleanup: Ring definition class method in RGFactory can be inlined
	https://pharo.fogbugz.com/f/cases/13731

13729 3 menu item to generate inst var accessors
	https://pharo.fogbugz.com/f/cases/13729

'.
	self loadTogether: self script138 merge: false.
	self flushCaches.
self cleanRepositories.
