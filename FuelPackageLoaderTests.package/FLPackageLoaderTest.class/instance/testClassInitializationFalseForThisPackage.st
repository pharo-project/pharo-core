tests
testClassInitializationFalseForThisPackage
	"It should send #initialize to each class."

	| aClass name materializedClass package |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class 
		duringTestCompileSilently: 'initialize  ClassVariable := 1';
		duringTestCompileSilently: 'isInitialized  ^ClassVariable isNil not'.

	name := aClass name.
	FLPackage mustInitializeByDefault: true.
	package := FLPackage named: classFactory packageName.
	package mustInitialize: false.
	self storeRemoveAndLoadPackage: package. 

	
	materializedClass := Smalltalk at: name.
	self deny: materializedClass isInitialized.
