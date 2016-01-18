update50534
	"self new update50534"
	self withUpdateLog: '17419 Rename AthensCairoCanvas setAlpha: to drawWithAlpha:
	https://pharo.fogbugz.com/f/cases/17419

17416 Integrate GTools version 3.9
	https://pharo.fogbugz.com/f/cases/17416'.
	self loadTogether: self script50534 merge: false.
	self loadConfiguration: 'GToolkitCore' version: '3.9'.self flushCaches.
