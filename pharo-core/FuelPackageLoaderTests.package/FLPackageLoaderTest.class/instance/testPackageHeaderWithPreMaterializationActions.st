tests
testPackageHeaderWithPreMaterializationActions
	"It should send #initialize to each class."

	| aClass name materializedClass package anotherClass |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class
		duringTestCompileSilently: 'classVariable: x ClassVariable := x';
		duringTestCompileSilently: 'classVariable  ^ClassVariable '.

	name := aClass name.
	package := FLPackage named: classFactory packageName.
	aClass perform: #classVariable: with: 42.
	package packageHeader addPreMaterializationAction:  self class closureExampleForPreMaterializationAction .
	self storeRemoveAndLoadPackage: package. 
	"self assert: ((Smalltalk at: #name) perform: #classVariable) equals: 43."