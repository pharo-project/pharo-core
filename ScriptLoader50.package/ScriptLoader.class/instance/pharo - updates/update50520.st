update50520
	"self new update50520"
	self withUpdateLog: '17361 Better LayoutFrame class comments and class method comments are needed
	https://pharo.fogbugz.com/f/cases/17361

17363 (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)) = LayoutFrame identity should be true and it is not.
	https://pharo.fogbugz.com/f/cases/17363

17364 PaginateMorph uses Wrong LayoutFrame API
	https://pharo.fogbugz.com/f/cases/17364'.
	self loadTogether: self script50520 merge: false.
	self flushCaches.
