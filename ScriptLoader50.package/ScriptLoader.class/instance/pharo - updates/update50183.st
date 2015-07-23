update50183
	"self new update50183"
	self withUpdateLog: '16009 Reflectivity: always compile primitive methods on Link install
	https://pharo.fogbugz.com/f/cases/16009

16007 remove #isAssociation is RGDefiniton
	https://pharo.fogbugz.com/f/cases/16007

16010  Fix typos in RBAssignmentInIfTrueRules comment
	https://pharo.fogbugz.com/f/cases/16010'.
	self loadTogether: self script50183 merge: false.
	self flushCaches.
