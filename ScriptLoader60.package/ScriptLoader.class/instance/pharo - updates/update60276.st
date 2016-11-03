update60276
	"self new update60276"
	self withUpdateLog: '19273 Icons of Catalog are not sorted by function
	https://pharo.fogbugz.com/f/cases/19273

19270 Fix broken keyboard navigation
	https://pharo.fogbugz.com/f/cases/19270

19246 New method to detect if class is root in own environment
	https://pharo.fogbugz.com/f/cases/19246'.
	self loadTogether: self script60276 merge: false.
	self loadConfiguration: 'GlamourCore' version: '4.26'.self flushCaches.
