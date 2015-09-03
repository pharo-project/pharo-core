update50301
	"self new update50301"
	self withUpdateLog: '14432 FreeTypeTests package should be FreeType-Tests
	https://pharo.fogbugz.com/f/cases/14432

14427 CompressionTests package should be Compression-Tests
	https://pharo.fogbugz.com/f/cases/14427

14434 MorphicTests package should be Morphic-Tests
	https://pharo.fogbugz.com/f/cases/14434'.
	self loadTogether: self script50301 merge: false.
	
RPackage organizer unregisterPackageNamed:  'FreeTypeTests' .
RPackage organizer unregisterPackageNamed:  'CompressionTests' .
RPackage organizer unregisterPackageNamed:  'MorphicTests' .
	self flushCaches.
