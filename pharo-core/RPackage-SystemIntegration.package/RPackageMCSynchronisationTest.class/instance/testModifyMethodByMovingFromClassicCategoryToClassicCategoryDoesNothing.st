tests - operations on methods
testModifyMethodByMovingFromClassicCategoryToClassicCategoryDoesNothing
	"test that when we move a method from a classic category (not begining with *) to another classic category , nothing is modified"
	
	| class firstPackage secondPackage|
	self addXCategory.
	firstPackage := self organizer packageNamed: #XXXXX.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass:  class inCategory: 'classic category'.

	self assert: (class >> #stubMethod) category = 'classic category'. 
	self assert: (firstPackage includesDefinedSelector: #stubMethod ofClass: class).
	self deny: (firstPackage includesExtensionSelector: #stubMethod ofClass: class).
	self assert: ((class >> #stubMethod) packageFromOrganizer: self organizer ) = firstPackage.
	
	class organization classify: #stubMethod under: 'new category'.
	self assert: (class >> #stubMethod) category = 'new category'. 
	self assert: (firstPackage includesDefinedSelector: #stubMethod ofClass: class).
	self deny: (firstPackage includesExtensionSelector: #stubMethod ofClass: class).
	self assert: ((class >> #stubMethod) packageFromOrganizer: self organizer ) = firstPackage