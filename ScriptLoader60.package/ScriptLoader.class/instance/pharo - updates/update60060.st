update60060
	"self new update60060"
	self withUpdateLog: '18361 Update UFFI version to 0.20.2
	https://pharo.fogbugz.com/f/cases/18361'.
	self loadTogether: self script60060 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.20.2'.
((RPackageOrganizer default packageNamed: 'UnifiedFFI-Tests') definedClasses)
	select: [ :each | each superclass = FFIExternalStructure ]
	thenDo: #rebuildFieldAccessors.
	self flushCaches.
