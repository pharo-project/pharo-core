tests
testIgnoreForeignInstanceSideMethod
	"It should not serialize class foreign protocol."

	| aClass name materializedClass |
	aClass := self newClass.
	aClass
		duringTestCompileSilently: 'foreign' classified: '*foreigns';
		duringTestCompileSilently: 'core' classified: 'cores'.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: #(core) asSet equals: materializedClass localSelectors.	
	self assert: (materializedClass includesSelector: #core).
	self deny: (materializedClass includesSelector: #foreign).
	self assert: #(cores) equals: materializedClass organization categories.
	self assert: #(core) equals: materializedClass organization allMethodSelectors.