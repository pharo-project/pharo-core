tests-automatic
testFormatVariableToFixed
	"Tests that serializer can tolerate a format change from a *weak/variable* class to a *fixed*."
	
	| materialized |
	self serialize: (FLWeakClassMock new: 5).
	materialized := self during: [ self materialized ] rename: FLWeakClassMock as: FLPair.
	self assert: materialized size = 0