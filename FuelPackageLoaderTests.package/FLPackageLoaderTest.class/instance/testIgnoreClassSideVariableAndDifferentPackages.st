tests
testIgnoreClassSideVariableAndDifferentPackages
	"It should not serialize class side variable values."

	| aClass name materializedClass anotherClass |
	aClass := self newClass.
	anotherClass := classFactory silentlyNewSubclassOf: Object instanceVariableNames: '' classVariableNames:  '' package: 'AnotherPackage'. 
	aClass addClassVarNamed: 'ClassSideVariable'.
	aClass class
		duringTestCompileSilently: ' classSideVariable: something ClassSideVariable := something';
		duringTestCompileSilently: 'classSideVariable  ^ ClassSideVariable'.
	aClass perform: #classSideVariable: with: anotherClass new.
	self deny: aClass classSideVariable isNil.

	name := aClass name.
	
	"We don't send storeRemoveAndLoadStubPackage because we need to remove anotherClass in the middle"
	self streamFactory writeStreamDo: [:aStream |
		FLPackageStore new storePackageNamed: classFactory packageName on: aStream ].

	"Traits are not correctly cleaned with the classFactory. Therefore, we do the full #tearDown"
	self tearDown.
	self stubPackageInfo extensionMethods do: [ :method | method methodClass removeSelectorSilently: method selector ].
	self assert: self stubPackageInfo classes isEmpty.
	self assert: self stubPackageInfo extensionMethods isEmpty.
	
	anotherClass removeFromSystem: false.

	self streamFactory readStreamDo: [:aStream |
		| package |
		SystemAnnouncer uniqueInstance doSilently: [
			package := FLPackageLoader new loadFrom: aStream.
		].
		classFactory createdClasses: package behaviors ].
	
	
	materializedClass := Smalltalk at: name.
	
	self assert: materializedClass classSideVariable isNil.