update50514
	"self new update50514"
	
(RPackageOrganizer default packageNamed: 'FFI-NB') mcWorkingCopy modified: false.
	self withUpdateLog: '17334 add ffiArgumentNames (to replace nbArgumentNames)
	https://pharo.fogbugz.com/f/cases/17334'.
	self loadTogether: self script50514 merge: false.
	self loadConfiguration: 'FFINB' version: '0.9.3'.self flushCaches.
