update60135
	"self new update60135"
	self withUpdateLog: '18682 remove  Object>>wantsDiffFeedback
	https://pharo.fogbugz.com/f/cases/18682

18686 Kernel does not depend any more on Compression
	https://pharo.fogbugz.com/f/cases/18686

18683 Update pharo kernel dependencies
	https://pharo.fogbugz.com/f/cases/18683'.
	self loadTogether: self script60135 merge: false.
	self flushCaches.
