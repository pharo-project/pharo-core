update50547
	"self new update50547"
	self withUpdateLog: '17448 ffi declaration does not understand pointer-pointer
	https://pharo.fogbugz.com/f/cases/17448'.
	self loadTogether: self script50547 merge: false.
	
[ ScriptLoader new loadConfiguration: 'UnifiedFFI' version: '0.11.1'] 
on: MCMergeOrLoadWarning do: [ :e | e resume: true ].
ScriptLoader new unloadPackageNamed: 'ConfigurationOfFFINB'.
	self flushCaches.
