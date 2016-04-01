update50673
	"self new update50673"
	self withUpdateLog: '17887 Update startup of metacello to use the session manager
	https://pharo.fogbugz.com/f/cases/17887

17922 Update Athens 3.9.2
	https://pharo.fogbugz.com/f/cases/17922'.
	self loadTogether: self script50673 merge: false.
	self loadConfiguration: 'Athens' version: '3.9.2'.self flushCaches.
