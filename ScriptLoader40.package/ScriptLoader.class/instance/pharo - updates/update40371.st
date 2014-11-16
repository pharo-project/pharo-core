update40371
	"self new update40371"
	self withUpdateLog: '14261 Delay refactoring (part 1) - move scheduler from class-side to instance-side of its own class
	https://pharo.fogbugz.com/f/cases/14261'.
	self loadTogether: self script371 merge: false.
	
Delay newCodeEnabled: true. .
	self flushCaches.
