update50204
	"self new update50204"
	self withUpdateLog: '16077 removing BooleanSlot with instance
	https://pharo.fogbugz.com/f/cases/16077

16082 load new athens version 3.7
	https://pharo.fogbugz.com/f/cases/16082

15773 Shout is using the wrong class to perform its semantics analysis
	https://pharo.fogbugz.com/f/cases/15773'.
	self loadTogether: self script50204 merge: false.
	self loadConfiguration: 'Athens' version: '3.7'.self flushCaches.
