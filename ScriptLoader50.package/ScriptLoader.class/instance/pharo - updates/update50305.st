update50305
	"self new update50305"
	self withUpdateLog: '16413 Model should be packaged outside System-Support
	https://pharo.fogbugz.com/f/cases/16413

16482 Better default size for MCBrowser
	https://pharo.fogbugz.com/f/cases/16482

16460 I fileout a package does not fileout metaclass extension
	https://pharo.fogbugz.com/f/cases/16460'.
	self loadTogether: self script50305 merge: false.
	self flushCaches.
