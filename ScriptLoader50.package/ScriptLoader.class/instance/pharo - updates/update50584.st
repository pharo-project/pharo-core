update50584
	"self new update50584"
	self withUpdateLog: '17074 What is NautilusMonticello
	https://pharo.fogbugz.com/f/cases/17074

16675 Evaluating code blocks while debugging may yield wrong values
	https://pharo.fogbugz.com/f/cases/16675

17597 clean some dead code in ProcessSpecificVariable
	https://pharo.fogbugz.com/f/cases/17597

'.
	self loadTogether: self script50584 merge: false.
	self flushCaches.
self cleanRepositories.
