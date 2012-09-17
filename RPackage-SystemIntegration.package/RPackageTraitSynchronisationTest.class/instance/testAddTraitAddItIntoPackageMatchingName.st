tests - operations on traits
testAddTraitAddItIntoPackageMatchingName
	"If we have Package XXXX and we create a trait in category XXXX-YYYY and XXXX-YYYY does not exist, the trait should be packaged within XXXX"
	
	"self debug: #testAddCategoryCreatesPackage"

	|tmpPackage class|
	self addXCategory.
	
	tmpPackage := self organizer packageNamed: #'XXXXX'.
	class := self createNewTraitNamed: 'NewClass' inCategory: 'XXXXX-YYYY'.

	self assert: (tmpPackage definesClass: class). 
	self assert: tmpPackage equals: class package.