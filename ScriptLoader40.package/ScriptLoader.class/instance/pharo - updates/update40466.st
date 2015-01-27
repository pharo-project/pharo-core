update40466
	"self new update40466"
	self withUpdateLog: '14807 Old bytecode generators are now useless. Remove them
	https://pharo.fogbugz.com/f/cases/14807

14804 In Spur VM, the number of literals of compiled method is now encoded in 15 bits (instead of 16)
	https://pharo.fogbugz.com/f/cases/14804

14806 Add spur VM compatibility in new bytecodeGenerator
	https://pharo.fogbugz.com/f/cases/14806

'.
	self loadTogether: self script466 merge: false.
	self flushCaches.
self cleanRepositories.
