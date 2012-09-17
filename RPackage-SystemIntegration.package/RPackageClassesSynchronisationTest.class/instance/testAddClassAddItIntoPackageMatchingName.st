tests - adding classes
testAddClassAddItIntoPackageMatchingName
	"If we have Package XXXX and we create a class in category XXXX-YYYY and XXXX-YYYY does not exist, the class should be packaged within XXXX"
	"self debug: #testAddCategoryCreatesPackage"

	|tmpPackage class|
	self addXCategory.
	
	tmpPackage := self organizer packageNamed: #'XXXXX'.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX-YYYY'.

	self assert: (tmpPackage definesClass: class).
	self assert: class package equals: tmpPackage