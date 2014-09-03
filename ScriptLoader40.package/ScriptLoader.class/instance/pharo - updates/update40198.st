update40198
	"self new update40198"
	self withUpdateLog: '13942 Deselecting stacklist can throw MNU
	https://pharo.fogbugz.com/f/cases/13942

13945 Author reset should not be called directly
	https://pharo.fogbugz.com/f/cases/13945

'.
	self loadTogether: self script198 merge: false.
	self flushCaches.
self cleanRepositories.
