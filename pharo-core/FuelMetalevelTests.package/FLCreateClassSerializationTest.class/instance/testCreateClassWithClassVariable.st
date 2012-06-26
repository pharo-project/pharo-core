tests
testCreateClassWithClassVariable
	"Tests materialization a class not defined in the image, with a class variable."
	
	| aClass materializedClass |	
	aClass := self  
		newSubclassOf: Object 
		instanceVariableNames: '' 
		classVariableNames: 'ClassVariable'.
	aClass classPool at: 'ClassVariable' put: #test.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.

	self assert: 1 = materializedClass classVarNames size.
	self assert: (materializedClass classVarNames includes: #ClassVariable).
	self assert: #test = (materializedClass classPool at: #ClassVariable).