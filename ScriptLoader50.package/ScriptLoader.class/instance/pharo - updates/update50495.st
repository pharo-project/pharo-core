update50495
	"self new update50495"
	self withUpdateLog: '17226 PluggableListMorph>>#userString should return one string
	https://pharo.fogbugz.com/f/cases/17226'.
	self loadTogether: self script50495 merge: false.
	self flushCaches.
