update50257
	"self new update50257"
	self withUpdateLog: '16298 get rid of Tool-Base in the bootstrap
	https://pharo.fogbugz.com/f/cases/16298

15861 Create test package for Jobs
	https://pharo.fogbugz.com/f/cases/15861

16283 Collections-Abstract should not depend on Graphics-Primitive
	https://pharo.fogbugz.com/f/cases/16283

16208 System-Support should have a System-Support-Tests
	https://pharo.fogbugz.com/f/cases/16208

16293 get rid of NativeBoost dependency in the bootstrap
	https://pharo.fogbugz.com/f/cases/16293'.
	self loadTogether: self script50257 merge: false.
	self flushCaches.
