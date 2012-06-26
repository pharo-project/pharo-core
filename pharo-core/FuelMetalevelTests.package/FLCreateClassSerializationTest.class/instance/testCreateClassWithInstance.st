tests
testCreateClassWithInstance
	"Tests materialization of a class who references an instance of itself."
	
	| aClass anInstance materializedClass materializedInstance |
	aClass := self newClassWithInstanceVariableNames: 'name'.
	aClass class instanceVariableNames: 'instance'.
	
	anInstance := aClass new
		instVarNamed: 'name' put: #testName;
		yourself.
	aClass 
		instVarNamed: 'instance' 
		put: anInstance.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.
	materializedInstance := materializedClass instVarNamed: 'instance'.
	
	self deny: aClass == materializedClass.
	self deny: anInstance == materializedInstance.
	self assert: #testName = (materializedInstance instVarNamed: 'name').