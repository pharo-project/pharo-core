update40002
	"self new update40002"
	self withUpdateLog: '13258 indexOf: can be much faster...
	https://pharo.fogbugz.com/f/cases/13258'.
	self loadTogether: self script2 merge: false.
	self flushCaches.
