update40119
	"self new update40119"
	self withUpdateLog: '13625 we can merge System-Tools with Tool-Base
	https://pharo.fogbugz.com/f/cases/13625

13570 Add-Halo, menu, mouse on export.... hangs image
	https://pharo.fogbugz.com/f/cases/13570

'.
	self loadTogether: self script119 merge: false.
	self flushCaches.
self cleanRepositories.
