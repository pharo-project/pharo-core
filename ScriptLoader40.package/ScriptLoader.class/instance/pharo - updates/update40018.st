update40018
	"self new update40018"
	self withUpdateLog: '13289 Failing test: ReleaseTest>>#testObsoleteClasses	
	https://pharo.fogbugz.com/f/cases/13289

13288 Failing test: CodeSimulationTests>>#testErrorCodeNotFound
	https://pharo.fogbugz.com/f/cases/13288'.
	self loadTogether: self script18 merge: false.
	Context initializeTryNamedPrimitiveTemplateMethod.
Context class superclass: InstructionStream class.
	self flushCaches.
