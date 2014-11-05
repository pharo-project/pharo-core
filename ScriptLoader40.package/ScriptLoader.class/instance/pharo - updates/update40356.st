update40356
	"self new update40356"
	self withUpdateLog: '14399 UIManager>>#theme got lost
	https://pharo.fogbugz.com/f/cases/14399'.
	self loadTogether: self script356 merge: false.
	
ScriptLoader new deletePackage: 'Polymorph-EventEnhancements'.
	self flushCaches.
