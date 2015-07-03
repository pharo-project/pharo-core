update50151
	"self new update50151"
	self withUpdateLog: '15891 Reflectivity: New HookGenerator
	https://pharo.fogbugz.com/f/cases/15891

15871 enable ProcessList
	https://pharo.fogbugz.com/f/cases/15871'.
	self loadTogether: self script50151 merge: false.
	
(Processor instVarNamed: #quiescentProcessLists) do: [ :each | each primitiveChangeClassTo: ProcessList new ].
	self flushCaches.
