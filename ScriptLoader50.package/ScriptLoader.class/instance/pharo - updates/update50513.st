update50513
	"self new update50513"
	self withUpdateLog: '17312 VM crash when using Athens + FreeType in Windows
	https://pharo.fogbugz.com/f/cases/17312

17317 Simplify line 8 in TClass>>#duplicateClassWithNewName: 
	https://pharo.fogbugz.com/f/cases/17317

17318 Multi deletion of methods do not work anymore
	https://pharo.fogbugz.com/f/cases/17318'.
	self loadTogether: self script50513 merge: false.
	self loadConfiguration: 'FFINB' version: '0.9.2'.self flushCaches.
