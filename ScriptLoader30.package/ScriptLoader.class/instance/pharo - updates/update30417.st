update30417
	"self new update30417"
	self withUpdateLog: '11654 Debugger broken: class InspectorWrapper needed by SpecDebugger
	https://pharo.fogbugz.com/f/cases/11654'.
	self loadTogether: self script209 merge: false.
	self flushCaches.
