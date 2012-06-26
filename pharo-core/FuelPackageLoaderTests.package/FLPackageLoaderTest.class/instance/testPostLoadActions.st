tests
testPostLoadActions
	"It should send #initialize to each class."

	| aClass name materializedClass package |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable ClassVariable2'.
	aClass class
		duringTestCompileSilently: 'postLoadMethod: classes  ClassVariable := classes';
		duringTestCompileSilently: 'postLoadMethod2  ClassVariable2 := 1';
		duringTestCompileSilently: 'classVariable  ^ClassVariable ';	
		duringTestCompileSilently: 'classVariable2  ^ClassVariable2 '.
				

	name := aClass name.
	FLPackage mustInitializeByDefault: false.
	package := FLPackage named: classFactory packageName.
	"I cannot use 'name' because since it is a instance variable, the closure won't be clean' "
	package addPostLoadAction: [:aPackage | (Smalltalk at: #ClassForTestToBeDeleted1) perform: #postLoadMethod: with: aPackage classes ].
	package addPostLoadAction: [ (Smalltalk at: #ClassForTestToBeDeleted1) perform: #postLoadMethod2].
	
	self storeRemoveAndLoadPackage: package. 

	materializedClass := Smalltalk at: name.
	self assert: (materializedClass perform:  #classVariable) first name equals: #ClassForTestToBeDeleted1.
	self assert: (materializedClass perform:  #classVariable2)  equals: 1.
