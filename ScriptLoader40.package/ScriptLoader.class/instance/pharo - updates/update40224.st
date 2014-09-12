update40224
	"self new update40224"
	self withUpdateLog: '14000 FilterTest needs to be moved to a Debugger test package
	https://pharo.fogbugz.com/f/cases/14000

14004 SpecLayout>>asArray(result is shadowed)
	https://pharo.fogbugz.com/f/cases/14004

14001 MethodModified>>newMethod: (newMethod is Undeclared) 
	https://pharo.fogbugz.com/f/cases/14001

14010 Small code critics clean of Ring
	https://pharo.fogbugz.com/f/cases/14010

'.
	self loadTogether: self script224 merge: false.
	self flushCaches.
self cleanRepositories.
