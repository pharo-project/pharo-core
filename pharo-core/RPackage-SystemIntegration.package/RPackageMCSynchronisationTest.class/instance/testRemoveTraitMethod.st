tests - operations on methods
testRemoveTraitMethod
	"test that when we remove a method from a trait used by a class, the method is removed from the trait package normally"
	
	|XPackage YPackage class trait|
	self addXCategory.
	self addYCategory.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	trait := self createNewTraitNamed: 'NewTrait' inCategory: 'YYYYY'.
	self createMethodNamed: 'stubMethod' inClass: trait  inCategory: 'classic protocol'. 
	class setTraitComposition: (trait) asTraitComposition.
	
	self assert: (YPackage includesDefinedSelector: #stubMethod ofClass: trait). 
	self deny: (XPackage includesDefinedSelector: #stubMethod ofClass: class). 
	trait removeSelector: #stubMethod.
	self deny: (YPackage includesDefinedSelector: #stubMethod ofClass: trait). 
	self deny: (XPackage includesDefinedSelector: #stubMethod ofClass: class). 