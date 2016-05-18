update60018
	"self new update60018"
	self withUpdateLog: '18256 move HTTPProgress to the Network-Kernel package
	https://pharo.fogbugz.com/f/cases/18256

18255 Improve documentation and tests for Integer methods for digits access
	https://pharo.fogbugz.com/f/cases/18255

17802 Convenient methods for Message and MessageSend
	https://pharo.fogbugz.com/f/cases/17802

18260 UUID tests should be moved to Tests package
	https://pharo.fogbugz.com/f/cases/18260'.
	self loadTogether: self script60018 merge: false.
	self flushCaches.
