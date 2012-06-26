tests
testIgnoreForeignClassSideMethod
	"It should not serialize class foreign protocol."

	| aClass name materializedClass |
	aClass := self newClass.
	aClass class
		duringTestCompileSilently: 'foreign' classified: '*foreigns';
		duringTestCompileSilently: 'core' classified: 'cores'.

	name := aClass name.
	self storeRemoveAndLoadStubPackage.
	materializedClass := Smalltalk at: name.

	self assert: #(core) asSet equals: materializedClass class localSelectors.	
	self assert: (materializedClass class includesSelector: #core).
	self deny: (materializedClass class includesSelector: #foreign).
	self assert: #(cores) equals: materializedClass class organization categories.
	self assert: #(core) equals: materializedClass class organization allMethodSelectors.