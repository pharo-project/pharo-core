tests - operations on methods
testRemoveExtensionMethodDoesRemoveExtendingPackage
	"test that when we remove a method that is an extension from an external package, the package is  removed from the the class extending packages if no other extension method exist"

	|XPackage  class YPackage|
	self addXYCategory.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage  := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass: class  inCategory: '*yyyyy'. 
	
	self assert: (YPackage includesExtensionSelector: #stubMethod ofClass: class). 
	class removeSelector: #stubMethod.
	self assert: ((self organizer extendingPackagesOf: class) isEmpty).  