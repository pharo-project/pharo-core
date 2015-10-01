update50352
	"self new update50352"
	self withUpdateLog: '16682 Syntax Error when recompiling the image
	https://pharo.fogbugz.com/f/cases/16682'.
	self loadTogether: self script50352 merge: false.
	self flushCaches.
