update40542
	"self new update40542"
	self withUpdateLog: '15081 nil in RecentTools
	https://pharo.fogbugz.com/f/cases/15081

15101 Replace senders of String>>#subStrings: in Monticello
	https://pharo.fogbugz.com/f/cases/15101

15100 Replace senders of String>>#subStrings: in Traits
	https://pharo.fogbugz.com/f/cases/15100

15099 Replace senders of String>>#subStrings: in CollectionTests
	https://pharo.fogbugz.com/f/cases/15099

15095 add #removeSlot: to ClassDescription
	https://pharo.fogbugz.com/f/cases/15095'.
	self loadTogether: self script542 merge: false.
	self flushCaches.
