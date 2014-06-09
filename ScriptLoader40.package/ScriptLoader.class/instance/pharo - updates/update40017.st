update40017
	"self new update40017"
	self withUpdateLog: '13316 Nautilus sorts instVarNames
	https://pharo.fogbugz.com/f/cases/13316

13277 Speed up String>>=
	https://pharo.fogbugz.com/f/cases/13277

'.
	self loadTogether: self script17 merge: false.
	self flushCaches.
