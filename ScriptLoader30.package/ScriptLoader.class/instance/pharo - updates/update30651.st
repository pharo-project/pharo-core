update30651
	"self new update30651"
	self withUpdateLog: '12063 ConfigurationBrowser window about message is wrong (and dated)
	https://pharo.fogbugz.com/f/cases/12063
	
12406 EllipseMidpointTracer should be move to Morphic-Core
	https://pharo.fogbugz.com/f/cases/12406
	
12445 ZnUrl>>asFileReference cannot resolve #filetree
	https://pharo.fogbugz.com/f/cases/12445
	
12446 Specs MorphicWindowAdapter missing #aboutTitle
	https://pharo.fogbugz.com/f/cases/12446
'.
	self loadTogether: self script304 merge: false.
	self flushCaches.
