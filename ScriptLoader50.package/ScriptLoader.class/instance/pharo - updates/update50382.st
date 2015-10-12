update50382
	"self new update50382"
	self withUpdateLog: '16730 Should sync back Rubric
	https://pharo.fogbugz.com/f/cases/16730

16765 Typo
	https://pharo.fogbugz.com/f/cases/16765

16766 Deprecate unreferenced/unused MultistateLabelMorph 
	https://pharo.fogbugz.com/f/cases/16766'.
	self loadTogether: self script50382 merge: false.
	self loadConfiguration: 'Rubric' version: '2.0'.self flushCaches.
