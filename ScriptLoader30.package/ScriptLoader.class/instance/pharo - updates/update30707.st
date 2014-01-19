update30707
	"self new update30707"
	self withUpdateLog: '5541 SequenceableCollection>>#copyReplaceAll:with:asTokens:   should be moved to string
	https://pharo.fogbugz.com/f/cases/5541

'.
	self loadTogether: self script360 merge: false.
	self flushCaches.
