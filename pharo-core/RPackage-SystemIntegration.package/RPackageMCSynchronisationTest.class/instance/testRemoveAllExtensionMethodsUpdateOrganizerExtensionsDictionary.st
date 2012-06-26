tests - operations on methods
testRemoveAllExtensionMethodsUpdateOrganizerExtensionsDictionary
	"test that In a class, when we remove all the method extended by the same external package, the class get unregistered from the classExtendingPackagesMapping of the organizer "

	|XPackage  class YPackage|
	self addXYCategory.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage  := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass: class  inCategory: '*yyyyy'. 
	self createMethodNamed: 'stubMethod2' inClass: class  inCategory: '*yyyyy'. 
	
	self assert: (YPackage includesExtensionSelector: #stubMethod ofClass: class). 
	self assert: (YPackage includesExtensionSelector: #stubMethod2 ofClass: class). 
	class removeSelector: #stubMethod.
	self assert: ((self organizer extendingPackagesOf: class) includes: YPackage). 
	class removeSelector: #stubMethod2.
	self deny: ((self organizer extendingPackagesOf: class) includes: YPackage).