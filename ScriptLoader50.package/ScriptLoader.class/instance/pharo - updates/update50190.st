update50190
	"self new update50190"
	self withUpdateLog: '16025 clean up: shouldGetStepsFrom:
	https://pharo.fogbugz.com/f/cases/16025

10916 RBParser missparse some temporary variables
	https://pharo.fogbugz.com/f/cases/10916

16023 RBClassReference can be removed
	https://pharo.fogbugz.com/f/cases/16023'.
	self loadTogether: self script50190 merge: false.
	self flushCaches.
