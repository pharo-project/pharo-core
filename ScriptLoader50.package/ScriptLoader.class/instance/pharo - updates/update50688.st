update50688
	"self new update50688"
	self withUpdateLog: '17998 Update Athens to latest
	https://pharo.fogbugz.com/f/cases/17998'.
	self loadTogether: self script50688 merge: false.
	self loadConfiguration: 'Athens' version: '3.9.3'.self flushCaches.
