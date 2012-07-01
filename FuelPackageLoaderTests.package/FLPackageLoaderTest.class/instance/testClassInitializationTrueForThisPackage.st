tests
testClassInitializationTrueForThisPackage
	"It should send #initialize to each class."

	| aClass name materializedClass package |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class 
		duringTestCompileSilently: 'initialize  ClassVariable := 1';
		duringTestCompileSilently: 'isInitialized  ^ClassVariable isNil not'.

	name := aClass name.
	FLPackage mustInitializeByDefault: false.
	package := FLPackage named: classFactory packageName.
	package mustInitialize: true.
	self storeRemoveAndLoadPackage: package. 

	
	materializedClass := Smalltalk at: name.
	self assert: materializedClass isInitialized.
