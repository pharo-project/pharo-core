update50764
	"self new update50764"
	self withUpdateLog: '19361 Morph>>#showActions broken
	https://pharo.fogbugz.com/f/cases/19361'.
	self loadTogether: self script50764 merge: false.
	self flushCaches.
