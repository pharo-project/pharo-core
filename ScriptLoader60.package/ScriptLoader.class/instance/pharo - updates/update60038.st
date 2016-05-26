update60038
	"self new update60038"
	self withUpdateLog: '18331 Support saving custom Layouts with Monticello
	https://pharo.fogbugz.com/f/cases/18331

17994 RBParserNode: allowed primitive pragma definition can not compile
	https://pharo.fogbugz.com/f/cases/17994'.
	self loadTogether: self script60038 merge: false.
	
OCOpalExamples compile: 'examplePrimitiveErrorModule
	
	<primitive: ''primFunction'' error: errorCode module: ''primModule''>
	^ errorCode'
	 classified: 'examples-pragmas'.
	
OCASTTranslatorTest compile: 'testExamplePrimitiveErrorModule
"test for primitive declaration
  <primitive: ''primFunction''  error: errorCode module: ''primModule''  >
"
	| method ast ir |
	method := OCOpalExamples >> #examplePrimitiveErrorModule.
	ast := method parseTree.
	ir := (ast doSemanticAnalysisIn: OCOpalExamples) ir.
	self assert: ir tempKeys equals: #(#errorCode)'
	 classified: 'testing - primitives'.
	self flushCaches.
