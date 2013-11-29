update30611
	"self new update30611"
	self withUpdateLog: '12288 groups menu in PackageTree is broken
	https://pharo.fogbugz.com/f/cases/12288
	
12283 drag&drop with PackageTree is not working fine
	https://pharo.fogbugz.com/f/cases/12283
	
12280 Nautilus treats should: messages as tests and tries to run them
	https://pharo.fogbugz.com/f/cases/12280'.
	self loadTogether: self script266 merge: false.
	self flushCaches.
