update40005
	"self new update40005"
	self withUpdateLog: '13278 ContextPart and MethodContext merged, remaining bugs
	https://pharo.fogbugz.com/f/cases/13278

13282 Failing test: testGForceInria
	https://pharo.fogbugz.com/f/cases/13282

- Unload Deprecated30'.
	self loadTogether: self script4 merge: false.
	ScriptLoader new unloadPackageNamed: 'Deprecated30'.	
InstructionStream subclasses: { Decompiler . Context }.
	self flushCaches.
