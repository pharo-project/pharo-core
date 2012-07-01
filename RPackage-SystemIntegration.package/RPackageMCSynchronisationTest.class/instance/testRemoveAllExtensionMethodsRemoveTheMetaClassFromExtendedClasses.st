tests - operations on methods
testRemoveAllExtensionMethodsRemoveTheMetaClassFromExtendedClasses
	"test that In a class (from the class side), when we remove all the method extended by the same external package, the class get unregistered from the extended classes of the external package "

	|XPackage  class YPackage|
	self addXYCategory.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage  := self organizer packageNamed: #YYYYY.
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'stubMethod' inClass: class theMetaClass inCategory: '*yyyyy'. 
	self createMethodNamed: 'stubMethod2' inClass: class theMetaClass  inCategory: '*yyyyy'. 
	
	self assert: (YPackage includesExtensionSelector: #stubMethod ofClass: class theMetaClass ). 
	self deny: (YPackage includesExtensionSelector: #stubMethod ofClass: class). 
	self assert: (YPackage includesExtensionSelector: #stubMethod2 ofClass: class theMetaClass ).
	self deny: (YPackage includesExtensionSelector: #stubMethod2 ofClass: class ). 
	class theMetaClass removeSelector: #stubMethod.
	self assert: (YPackage extendsClass: class theMetaClass ). 
	self assert: (YPackage extendsClass: class ). 
	class theMetaClass removeSelector: #stubMethod2.
	self deny: (YPackage extendsClass: class).
	self deny: (YPackage extendsClass: class theMetaClass).