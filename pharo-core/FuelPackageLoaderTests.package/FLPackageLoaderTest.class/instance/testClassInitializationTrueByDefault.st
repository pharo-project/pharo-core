tests
testClassInitializationTrueByDefault
	"It should send #initialize to each class."

	| aClass name materializedClass |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class 
		duringTestCompileSilently: 'initialize  ClassVariable := 1';
		duringTestCompileSilently: 'isInitialized  ^ClassVariable isNil not'.

	FLPackage mustInitializeByDefault: true.
	
	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.
	self assert: materializedClass isInitialized.
	