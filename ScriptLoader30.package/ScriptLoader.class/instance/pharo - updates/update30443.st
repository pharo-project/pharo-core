update30443
	"self new update30443"
	self withUpdateLog: '11757 NautilusMCBindings misses a reset method
	https://pharo.fogbugz.com/f/cases/11757
	
11758 Small fix to make FileContentBrowser work again
	https://pharo.fogbugz.com/f/cases/11758'.
	self loadTogether: self script122 merge: false.
	self flushCaches.
