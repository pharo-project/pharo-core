tests
testOriginalInstanceSideMethodsAreNotBroken
	"It should not serialize class variable values."

	| aClass name materializedClass |
	aClass := self newClass.
	aClass 
		duringTestCompileSilently: 'foreign' classified: '*foreigns';
		duringTestCompileSilently: 'core' classified: 'cores'.

	name := aClass name.
	self assert: (aClass >> #foreign) category equals: #'*foreigns'.

	self streamFactory writeStreamDo: [:aStream |
		FLPackageStore new storePackageNamed: classFactory packageName on: aStream ].

	self assert: (aClass >> #foreign) category equals: #'*foreigns'.

	"Traits are not correctly cleaned with the classFactory. Therefore, we do the full #tearDown"
	self tearDown.
	self stubPackageInfo extensionMethods do: [ :method | method methodClass removeSelectorSilently: method selector ].
	
	