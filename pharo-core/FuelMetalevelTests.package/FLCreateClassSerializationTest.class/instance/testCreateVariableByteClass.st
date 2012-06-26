tests
testCreateVariableByteClass
	"Tests materialization of a variable byte class that is not defined in the image"
	self assertMaterializedHasCorrectFormat: FLVariableByteClassMock
