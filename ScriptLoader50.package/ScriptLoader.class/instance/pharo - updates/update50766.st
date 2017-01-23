update50766
	"self new update50766"
	self withUpdateLog: '19477 Fuel out Stack uses old debugger API in Pharo 5
	https://pharo.fogbugz.com/f/cases/19477'.
	self loadTogether: self script50766 merge: false.
	self flushCaches.
