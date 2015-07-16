update50174
	"self new update50174"
	self withUpdateLog: '14616 Package Tags causing merge conflict
	https://pharo.fogbugz.com/f/cases/14616

15987 SparseLargeTable>>zapDefaultOnlyEntries creates an unused copy
	https://pharo.fogbugz.com/f/cases/15987'.
	self loadTogether: self script50174 merge: false.
	self flushCaches.
