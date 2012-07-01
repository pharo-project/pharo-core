tests
testCompiledMethod
	"They are not considered globals by default in full serialization mode."
	self flag: #todo. "This is really undesired. They should be global by default, as in light serialization mode."
	self resultOfSerializeAndMaterialize: FLPair >> #left.
	