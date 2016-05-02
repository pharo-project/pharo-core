update50744
	"self new update50744"
	self withUpdateLog: '18154 revert change done in 18137
	https://pharo.fogbugz.com/f/cases/18154

17478 Update pharo kernel dependency descriptions
	https://pharo.fogbugz.com/f/cases/17478'.
	self loadTogether: self script50744 merge: false.
	self flushCaches.
