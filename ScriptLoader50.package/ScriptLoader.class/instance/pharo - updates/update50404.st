update50404
	"self new update50404"
	self withUpdateLog: '16847 assert: should not raise an error with a non-boolean argument
	https://pharo.fogbugz.com/f/cases/16847

16859 Automatic removing of temporary variable leaves a blank character
	https://pharo.fogbugz.com/f/cases/16859

10808 Bad behavior on FileOut/FileIn tool when using traits
	https://pharo.fogbugz.com/f/cases/10808

16536 Fix VSReleaseDevelopmentVersionCommandTest>>#testResolveSymbolicVersionsIn
	https://pharo.fogbugz.com/f/cases/16536'.
	self loadTogether: self script50404 merge: false.
	self loadConfiguration: 'Versionner' version: '2.13.6'.self flushCaches.
