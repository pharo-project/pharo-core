update40387
	"self new update40387"
	"Delay newCodeEnabled: false. ."
	self withUpdateLog: '14261 Delay refactoring (part 1) - move scheduler from class-side to instance-side of its own class
	https://pharo.fogbugz.com/f/cases/14261

'.
	self loadTogether: self script387 merge: false.
	"Delay newCodeEnabled: true. ."
	self flushCaches.
self cleanRepositories.
