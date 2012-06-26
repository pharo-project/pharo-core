tests
testCreateCompiledMethodClass
	"Tests materialization of a CompiledMethod class that is not defined in the image"
	self assertMaterializedHasCorrectFormat: FLCompiledMethodClassMock
