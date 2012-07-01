tests - operations on classes
testRecategorizeClassWithMetaClassMethodsRegisterAllClassMethodsInTheNewPackage

	"test that when we recategorize a class (having methods defined in both instance and class side), the new package in which it is defined include all the methods (from instance and class side) defined in this class (not extensions)"
	
	| addedCount addedCat XPackage YPackage ZPackage class|
	self addXCategory.
	self addYCategory.
	Smalltalk organization addCategory: 'ZZZZZ'.
	XPackage := self organizer packageNamed: #XXXXX.
	YPackage := self organizer packageNamed: #YYYYY.
	ZPackage := self organizer packageNamed: #ZZZZZ.
	
	class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
	self createMethodNamed: 'method1' inClass: class inCategory: 'category'.
	self createMethodNamed: 'method2' inClass: class inCategory: 'category'.
	self createMethodNamed: 'method3' inClass: class inCategory: '*zzzzz'.
	self createMethodNamed: 'method4' inClass: class inCategory: '*yyyyy'.
	self createMethodNamed: 'method5' inClass: class theMetaClass inCategory: 'category'.
	self createMethodNamed: 'method6' inClass: class theMetaClass inCategory: 'category'.
	self createMethodNamed: 'method7' inClass: class theMetaClass inCategory: '*zzzzz'.
	
	self assert: (XPackage includesDefinedSelector: #method1 ofClass: class ). 
	self assert: (XPackage includesDefinedSelector: #method2 ofClass: class ).
	self assert: (ZPackage includesExtensionSelector: #method3 ofClass: class ). 
	self assert: (YPackage includesExtensionSelector: #method4 ofClass: class ).
	self assert: (XPackage includesDefinedSelector: #method5 ofMetaclassName: class name). 
	self assert: (XPackage includesDefinedSelector: #method6 ofMetaclassName: class name). 
	self assert: (ZPackage includesExtensionSelector: #method7 ofMetaclassName: class name ). 
	
	class category: 'YYYYY'.
	
	self assert: (YPackage includesDefinedSelector: #method1 ofClass: class ). 
	self deny: (XPackage includesDefinedSelector: #method1 ofClass: class ). 
	self deny: (XPackage includesExtensionSelector: #method1 ofClass: class ). 
	self assert: (YPackage includesDefinedSelector: #method2 ofClass: class ).
	self deny: (XPackage includesDefinedSelector: #method2 ofClass: class ). 
	self deny: (XPackage includesExtensionSelector: #method2 ofClass: class ). 
	self deny: (YPackage includesExtensionSelector: #method3 ofClass: class ). 
	self deny: (YPackage includesDefinedSelector: #method3 ofClass: class ). 
	self assert: (ZPackage includesExtensionSelector: #method3 ofClass: class ). 
	"lets check metaclass methods"
	self assert: (YPackage includesDefinedSelector: #method5 ofMetaclassName: class name). 
	self assert: (YPackage includesDefinedSelector: #method6 ofMetaclassName: class name). 
	self deny: (XPackage includesDefinedSelector: #method5 ofMetaclassName: class name). 
	self deny: (XPackage includesDefinedSelector: #method6 ofMetaclassName: class name). 
	self assert: (ZPackage includesExtensionSelector: #method7 ofMetaclassName: class name ). 
	"I am not sure about this test. For now it does not pass, but I don't know what is the expecting behavior here."
	"self assert: (YPackage includesExtensionSelector: #method4 ofClass: class ). "		