tests
testCreateWithClassVariableAccessors
	"Tests materialization of a compiled method in a class not defined in the image. The class defines accessors for a class variable."
	
	| aClass materializedClass instance |	
	aClass := self  
		newSubclassOf: Object 
		instanceVariableNames: '' 
		classVariableNames: 'ClassVariable'.
	aClass 
		duringTestCompileSilently: 'classVariable ^ClassVariable';
		duringTestCompileSilently: 'classVariable: value ClassVariable := value'.
	(self newInstanceFrom: aClass) classVariable: 42.

	materializedClass := self resultOfSerializeRemoveAndMaterialize: aClass.
	instance := self newInstanceFrom: materializedClass.

	self assert: (materializedClass includesSelector: #classVariable).
	self assert: 42 = instance classVariable.
	instance classVariable: 0.
	self assert: 0 = instance classVariable.
