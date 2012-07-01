tests
testClassInitializationFalseByDefault
	"It should send #initialize to each class."

	| aClass name materializedClass |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class 
		duringTestCompileSilently: 'initialize  ClassVariable := 1';
		duringTestCompileSilently: 'isInitialized  ^ClassVariable isNil not'.

	FLPackage mustInitializeByDefault: false.
	
	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.
	self deny: materializedClass isInitialized.
	