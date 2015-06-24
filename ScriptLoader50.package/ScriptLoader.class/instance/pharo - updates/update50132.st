update50132
	"self new update50132"
	self withUpdateLog: '15568 removeClass does not work for Last modified/Most viewed DynamicGroups 
	https://pharo.fogbugz.com/f/cases/15568

15827 Update Rubric
	https://pharo.fogbugz.com/f/cases/15827

15272 RBPatternMessageNode>>match:inContext: SubscriptOutOfBounds
	https://pharo.fogbugz.com/f/cases/15272'.
	self loadTogether: self script50132 merge: false.
	self loadConfiguration: 'Rubric' version: '1.4.1'.
RBScanner initialize.
	self flushCaches.
