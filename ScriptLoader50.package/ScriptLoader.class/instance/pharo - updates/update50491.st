update50491
	"self new update50491"
	self withUpdateLog: '15456 Load latest version of metacello
	https://pharo.fogbugz.com/f/cases/15456'.
	self loadTogether: self script50491 merge: false.
	self loadConfiguration: 'PharoMetacello' version: 'pharo50'.self flushCaches.
