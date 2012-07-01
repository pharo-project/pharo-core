tests - operations on classes
testAddClassAddItIntoPackage
	"self debug: #testAddCategoryCreatesPackage"

	|tmpPackage class|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: #XXXXX).
	tmpPackage := self organizer packageNamed: #XXXXX.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self assert: (tmpPackage definesClass: class). 
	self assert: (class package = tmpPackage)