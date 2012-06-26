tests
testMaterializationDoesNotModifySerializedClass
	"Tests that materialization does not change the source class."
	
	| aClass materializedClass |	
	aClass := self newClassWithInstanceVariableNames: 'var'.
	
	self analyzer considerInternalBehavior: aClass.
	self serialize: aClass.
	aClass removeInstVarNamed: 'var'.
	materializedClass := self materialized.

	self assert: materializedClass instVarNames = #(var) description: 'The materialized class has the variable as the serialized class'.
	self assert: aClass instVarNames isEmpty description: 'Materialization should not modify the serialized class'.