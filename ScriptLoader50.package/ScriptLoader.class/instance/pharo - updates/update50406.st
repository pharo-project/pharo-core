update50406
	"self new update50406"
	self withUpdateLog: '16863 Make expandMacros more consistent with general use
	https://pharo.fogbugz.com/f/cases/16863

16462 BIConfigurableFormatter should not use asString
	https://pharo.fogbugz.com/f/cases/16462'.
	self loadTogether: self script50406 merge: false.
	self flushCaches.
