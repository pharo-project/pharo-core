update40219
	"self new update40219"
	self withUpdateLog: '13993 remove two undeclared in System-Announcemetns
	https://pharo.fogbugz.com/f/cases/13993

13990 RBImplementedNotSentRule slow
	https://pharo.fogbugz.com/f/cases/13990

'.
	self loadTogether: self script219 merge: false.
	self flushCaches.
self cleanRepositories.
