tests
testCreateVariableClass
	"Tests materialization of a variable class that is not defined in the image"
	self assertMaterializedHasCorrectFormat: FLVariableClassMock
