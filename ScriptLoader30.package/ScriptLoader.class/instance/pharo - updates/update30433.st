update30433
	"self new update30433"
	self withUpdateLog: '11708 all users of old Inspector framework needs to use the new one
	https://pharo.fogbugz.com/f/cases/11708
	
11721 Replace | and & with and: [] and or: []
	https://pharo.fogbugz.com/f/cases/11721
	
11722 Replace | and & with and: [] and or: [] part 2
	https://pharo.fogbugz.com/f/cases/11722
	
11723 Replace | and & with and: [] and or: [] part 3 (last)
	https://pharo.fogbugz.com/f/cases/11723'.
	self loadTogether: self script112 merge: false.
	self flushCaches.
