tests - operations on methods
testModifyMethodByMovingFromExtensionCategoryToClassicCategoryMoveItFromExtendingPackageToParentPackage

	"test that when we move a method from an extension category ( begining with *) to a classic category , the method is moved from the extending package to the parent package of the class"
	
	| class firstPackage secondPackage|
	self addXYCategory.
	firstPackage := self organizer  packageNamed: #XXXXX.
	secondPackage := self organizer  packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass:  class inCategory: '*yyyyy'.

	self assert: (class >> #stubMethod) category = '*yyyyy'. 
	self deny: (firstPackage includesDefinedSelector: #stubMethod ofClass: class).
	self assert: (secondPackage includesExtensionSelector: #stubMethod ofClass: class).
	self assert: ((class >> #stubMethod) packageFromOrganizer: self organizer ) = secondPackage.
	
	class organization classify: #stubMethod under: 'classic category'.
	
	self assert: (class >> #stubMethod) category = 'classic category'. 
	self assert: (firstPackage includesDefinedSelector: #stubMethod ofClass: class).
	self deny: (secondPackage includesExtensionSelector: #stubMethod ofClass: class).
	self assert: ((class >> #stubMethod) packageFromOrganizer: self organizer ) = firstPackage.