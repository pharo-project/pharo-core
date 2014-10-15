update40305
	"self new update40305"
	self withUpdateLog: '13535 Class code wrongly styled in critic browser
	https://pharo.fogbugz.com/f/cases/13535

14236 add #sourceInterval and #sourceNode to SymbolicBytecode
	https://pharo.fogbugz.com/f/cases/14236

14238 Replace Announcer>>#on:send:to:s senders in NECompletion
	https://pharo.fogbugz.com/f/cases/14238

'.
	self loadTogether: self script305 merge: false.
	self flushCaches.
self cleanRepositories.
