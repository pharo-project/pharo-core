tests-automatic
testFormatFixedToVariable
	"Tests that serializer can tolerate a format change from a *fixed* class to *weak/variable*"
	
	| materialized |
	self serialize: FLPair new.
	materialized := self during: [ self materialized ] rename: FLPair as: FLWeakClassMock.
	self assert: materialized size = 0