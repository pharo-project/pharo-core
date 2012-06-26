tests - operations on classes
testAddClassUpdateTheOrganizer
	"test that when we add a class, the organizer 'classPackageMapping' dictionary is updated, so that the class is linked to its package and so that we can access its parent package"
	"self debug: #testAddClassUpdateTheOrganizer"
	|tmpPackage class|
	self addXCategory.
	self assert: (self organizer includesPackageNamed: #XXXXX).
	tmpPackage := self organizer packageNamed: #XXXXX.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self assert: (self organizer packageOf: class) = tmpPackage. 
		