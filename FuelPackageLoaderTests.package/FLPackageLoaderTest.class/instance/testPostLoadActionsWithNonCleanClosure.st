tests
testPostLoadActionsWithNonCleanClosure
	"It should send #initialize to each class."

	| aClass name materializedClass package |
	aClass := self newSubclassOf: Object instanceVariableNames: '' classVariableNames: 'ClassVariable'.
	aClass class
		duringTestCompileSilently: 'postLoadMethod: classes  ClassVariable := classes';
		duringTestCompileSilently: 'classVariable  ^ClassVariable '.

	name := aClass name.
	FLPackage mustInitializeByDefault: false.
	package := FLPackage named: classFactory packageName.
	"Since 'name' is a instance variable, the closure won't be clean "
	self should: [package addPostLoadAction: [:aPackage | name ]] raise: Error.
