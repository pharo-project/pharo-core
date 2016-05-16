update60008
	"self new update60008"
	self withUpdateLog: '18015 TApplyingOnClassSide  class heirarchy  speedup
	https://pharo.fogbugz.com/f/cases/18015'.
	self loadTogether: self script60008 merge: false.
	self flushCaches.
