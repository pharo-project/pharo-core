tests
testCreateClassWithVariables
	"Tests materialization of a class not defined in the image, with instance variables."
	
	| aClass materializedClass |	
	aClass := self newClassWithInstanceVariableNames: 'var1 var2'.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.

	self assert: aClass instVarNames = materializedClass instVarNames.