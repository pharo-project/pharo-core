tests
testAdditionalObjects
	"It should send #initialize to each class."

	| aClass name materializedClass package loadedPackage |
	aClass := self newClass.
	
	package := FLPackage named: classFactory packageName.
	package at: #test putAdditionalObject: 'test'.
	package at: 42 putAdditionalObject: 68.
	
	loadedPackage := self storeRemoveAndLoadPackage: package. 

	self assert: (loadedPackage additionalObjectAt: #test) equals: 'test'.
	self assert: (loadedPackage additionalObjectAt: 42) equals: 68.
	