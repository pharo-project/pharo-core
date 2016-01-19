update50535
	"self new update50535"
	self withUpdateLog: '17415 SimpleButtonMorph lacks #themeChanged
	https://pharo.fogbugz.com/f/cases/17415

17357 Lost instance variables (AthensCairoPatternSurfacePaint)
	https://pharo.fogbugz.com/f/cases/17357

17422 Rename FFI-NB to UnifiedFFI
	https://pharo.fogbugz.com/f/cases/17422'.
	self loadTogether: self script50535 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.10'.
AthensWrapMorph withAllSubclassesDo: #recompile.
ScriptLoader new 
	unloadPackageNamed: 'FFI-NB';
	unloadPackageNamed: 'FFI-NB-Legacy';
	unloadPackageNamed: 'FFI-NB-Tests'.
	self flushCaches.
