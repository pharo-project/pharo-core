tests
testBasic

	| result |
	self deny: FLGlobalSendMock newInstanceToSerialize = FLGlobalSendMock newInstanceToMaterialize.

	result := self resultOfSerializeAndMaterialize: FLGlobalSendMock newInstanceToSerialize.
	"Global sends should retain the information they were serialized with"
	self deny: FLGlobalSendMock newInstanceToMaterialize = result.
	self assert: result contents equals: #serializing