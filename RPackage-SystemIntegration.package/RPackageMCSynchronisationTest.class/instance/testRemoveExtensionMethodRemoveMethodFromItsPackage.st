tests - operations on methods
testRemoveExtensionMethodRemoveMethodFromItsPackage
	"test that when we remove a method that is an extension from an external package, the method is removed from this package"

	|XPackage  class YPackage|
	self addXYCategory.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage  := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass: class  inCategory: '*yyyyy'. 
	
	self assert: (YPackage includesExtensionSelector: #stubMethod ofClass: class). 
	class removeSelector: #stubMethod.
	self deny: (YPackage includesDefinedSelector: #stubMethod ofClass: class). 
	self deny: (YPackage includesExtensionSelector: #stubMethod ofClass: class). 
	self deny: (YPackage includesSelector: #stubMethod ofClass: class).