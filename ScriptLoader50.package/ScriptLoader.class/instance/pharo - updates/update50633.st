update50633
	"self new update50633"
	self withUpdateLog: '16537 FTDataSource>>elementAt: should not be there.
	https://pharo.fogbugz.com/f/cases/16537

16330 Text*Link users should use RubText*Link
	https://pharo.fogbugz.com/f/cases/16330

17774 Use isIntegerPoint instead of  "x isInteger and: [ y isInteger ]" in some Point methods
	https://pharo.fogbugz.com/f/cases/17774

17773 CircleMorph should use default initialize methods instead of #initialize
	https://pharo.fogbugz.com/f/cases/17773'.
	self loadTogether: self script50633 merge: false.
	self loadConfiguration: 'FastTable' version: '0.10.1'.
self loadConfiguration: 'Rubric' version: '2.11'.self flushCaches.
