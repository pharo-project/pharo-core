update50612
	"self new update50612"
	self withUpdateLog: '17236 unload NativeBoost (spur migration)
	https://pharo.fogbugz.com/f/cases/17236'.
	self loadTogether: self script50612 merge: false.
	
#('Generated-code-non-existing-package' 'NativeBoost-Tests' 'NativeBoost-Examples' 'NativeBoost-Mac'  'NativeBoost-Unix'  'NativeBoost-Win32' 'NativeBoost-Core' 'NativeBoost-Pools') 
do: [ :each | ScriptLoader new unloadPackageNamed: each ].
#('AsmJit-Tests' 'AsmJit-Extension'  'AsmJit-x86' 'AsmJit-Operands'  'AsmJit-StackManagement' 'AsmJit-Instructions' 'AsmJit-Core')
do: [ :each | ScriptLoader new unloadPackageNamed: each ].
Context initializePrimitiveSimulators.
	self flushCaches.
