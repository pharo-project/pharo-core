update50295
	"self new update50295"
	
(RPackage named: 'Jobs-Tests') mcPackage unload.
(RPackage named: 'System-Support-Tests') mcPackage unload.
	self withUpdateLog: '16279 Update bootsrap dependencies
	https://pharo.fogbugz.com/f/cases/16279

16445 Jobs tests not well packaged
	https://pharo.fogbugz.com/f/cases/16445

16446 System-Support tests not well packaged
	https://pharo.fogbugz.com/f/cases/16446'.
	self loadTogether: self script50295 merge: false.
	self flushCaches.
