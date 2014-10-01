update40273
	"self new update40273"
	self withUpdateLog: '14123 removed backgroundColor, fixed playgroundpage>>contents
	https://pharo.fogbugz.com/f/cases/14123'.
	self loadTogether: self script273 merge: false.
	self loadConfiguration: 'GTPlayground' version: '1.0.2'.self flushCaches.
