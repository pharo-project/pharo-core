update50745
	"self new update50745"
	self withUpdateLog: '18152 Failing on CI on Windows only: ZnHTTPSTests.testGetPharoVersion (from Zinc-Zodiac)
	https://pharo.fogbugz.com/f/cases/18152'.
	self loadTogether: self script50745 merge: false.
	self flushCaches.
