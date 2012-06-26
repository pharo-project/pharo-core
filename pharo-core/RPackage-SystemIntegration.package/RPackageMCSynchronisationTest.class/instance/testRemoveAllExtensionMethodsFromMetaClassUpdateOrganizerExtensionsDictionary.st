tests - operations on methods
testRemoveAllExtensionMethodsFromMetaClassUpdateOrganizerExtensionsDictionary
	"test that In a class (from the meta side), when we remove all the method extended by the same external package, the class get unregistered from the classExtendingPackagesMapping of the organizer "

	|XPackage  class YPackage|
	self addXYCategory.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage  := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass: class theMetaClass inCategory: '*yyyyy'. 
	self createMethodNamed: 'stubMethod2' inClass: class theMetaClass  inCategory: '*yyyyy'. 
	
	self assert: (YPackage includesExtensionSelector: #stubMethod ofClass: class theMetaClass). 
	self assert: (YPackage includesExtensionSelector: #stubMethod2 ofClass: class theMetaClass). 
	class theMetaClass removeSelector: #stubMethod.
	"there should be no differences made between class and metaClass:"
	self assert: ((self organizer extendingPackagesOf: class) includes: YPackage). 
	self assert: ((self organizer extendingPackagesOf: class theMetaClass) includes: YPackage). 
	class theMetaClass removeSelector: #stubMethod2.
	"there should be no differences made between class and metaClass:"
	self deny: ((self organizer extendingPackagesOf: class) includes: YPackage). 
	self deny: ((self organizer extendingPackagesOf: class theMetaClass) includes: YPackage). 