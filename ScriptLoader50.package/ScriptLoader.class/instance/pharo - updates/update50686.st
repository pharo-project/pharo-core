update50686
	"self new update50686"
	self withUpdateLog: '17983 Update GTSpotter to latest version that reduces memory leaks
	https://pharo.fogbugz.com/f/cases/17983'.
	self loadTogether: self script50686 merge: false.
	self loadConfiguration: 'GTSpotter' version: '2.7.1'.self flushCaches.
