update40016
	"self new update40016"
	self withUpdateLog: '13286 Failing test: testBehaviorRespectsPolymorphismWithTraitBehavior
	https://pharo.fogbugz.com/f/cases/13286

13314 Workspace save to file on accept does not take line ending settings into account
	https://pharo.fogbugz.com/f/cases/13314

'.
	self loadTogether: self script16 merge: false.
	self flushCaches.
