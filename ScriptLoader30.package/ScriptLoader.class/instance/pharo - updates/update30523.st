update30523
	"self new update30523"
	self withUpdateLog: '12001 moved some isKindOf: to isXXX
	https://pharo.fogbugz.com/f/cases/12001
	
12004 delete empty packages
	https://pharo.fogbugz.com/f/cases/12004
	
12002 DeepCopier>>isItTimeToCheckVariables is candidate to be removed	
	https://pharo.fogbugz.com/f/cases/12002
	
12005 unload BaselineOfFileTree, BaselineOfMetacello
	https://pharo.fogbugz.com/f/cases/12005'.
	self loadTogether: self script178 merge: false.
	ScriptLoader new deletePackage: 'System-Text'.
ScriptLoader new deletePackage: 'System-PragmaCollector'.
ScriptLoader new deletePackage: 'Keymapping-Shortcuts'.
ScriptLoader new deletePackage: 'Spec-Adapters'.
ScriptLoader new deletePackage: 'Spec-Bindings'.
ScriptLoader new deletePackage: 'Spec-Builder'.
ScriptLoader new deletePackage: 'Spec-Widgets'.
ScriptLoader new unloadPackageNamed:  'BaselineOfFileTree'.
ScriptLoader new unloadPackageNamed:  'BaselineOfMetacello'.
.
	self flushCaches.
