update40226
	"self new update40226"
	self withUpdateLog: '13214 rename instance variable does not work on class side
	https://pharo.fogbugz.com/f/cases/13214

14011 Many leftover methods after method announcement refactoring
	https://pharo.fogbugz.com/f/cases/14011

'.
	self loadTogether: self script226 merge: false.
	self flushCaches.
self cleanRepositories.
