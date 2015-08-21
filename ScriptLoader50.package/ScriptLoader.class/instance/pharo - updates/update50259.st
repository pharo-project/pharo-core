update50259
	"self new update50259"
	self withUpdateLog: '16266 Nautilus no longer highlights protocol when method is selected
	https://pharo.fogbugz.com/f/cases/16266'.
	self loadTogether: self script50259 merge: false.
	self loadConfiguration: 'FastTable' version: '0.7.7'.self flushCaches.
