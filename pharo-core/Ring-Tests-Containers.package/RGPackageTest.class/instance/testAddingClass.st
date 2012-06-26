testing
testAddingClass
	| newPackage newClass |
	
	newPackage:= RGFactory current createPackageNamed: #'Collections-Sequenceable'.
	newClass:= RGFactory current createClassNamed: #OrderedCollection.
	newPackage addClass: newClass.
	
	self assert: (newPackage hasClasses).
	self assert: (newClass package == newPackage).
	self assert: ((newPackage classNamed: #OrderedCollection) == newClass)