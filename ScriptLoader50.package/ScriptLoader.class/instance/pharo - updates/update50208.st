update50208
	"self new update50208"
	self withUpdateLog: '15817 Clean up Nautilus groups
	https://pharo.fogbugz.com/f/cases/15817'.
	self loadTogether: self script50208 merge: false.
	self flushCaches.
