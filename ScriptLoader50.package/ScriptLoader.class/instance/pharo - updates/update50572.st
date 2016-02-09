update50572
	"self new update50572"
	
Gofer it 
	smalltalkhubUser: 'Pharo' project: 'Pharo50Inbox';
	package: 'ConfigurationOfUnifiedFFI';
	load.
.
	self withUpdateLog: '17535 FFI tests fails because now plugins are builtin
	https://pharo.fogbugz.com/f/cases/17535'.
	self loadTogether: self script50572 merge: false.
	self loadConfiguration: 'UnifiedFFI' version: '0.12.1'.
FFICallout initializeTypeAliases.
ScriptLoader new unloadPackageNamed: 'FFI-Tests'.
	self flushCaches.
