tests
testCreateByteArrayWithInstance
	"Tests internal materialization of ByteArray together with an instance of it."
	
	| result |
	self analyzer considerInternalAllBehaviors: (ByteArray withAllSuperclasses removeAll: Collection withAllSuperclasses; yourself).
	
	result := self resultOfSerializeAndMaterialize: (ByteArray with: 42).
	
	self assert: result class name = #ByteArray.
	self assert: result size = 1.
	self assert: result first = 42.