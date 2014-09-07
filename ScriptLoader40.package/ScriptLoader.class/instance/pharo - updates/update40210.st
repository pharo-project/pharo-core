update40210
	"self new update40210"
	self withUpdateLog: '13888 Clean the use of spec to initialize widget in the morphicAdapter hierarchy
	https://pharo.fogbugz.com/f/cases/13888

'. 
	self loadTogether: self script210 merge: false.
	self flushCaches.
self cleanRepositories.
