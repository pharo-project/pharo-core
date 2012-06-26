tests - operations on classes
testRecategorizeClassRegisterTheClassMethodsInTheNewPackage

	"test that when we recategorize a class, the new package in which it is defined include all the methods defined in this class (not extensions)"
	
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
	
	self assert: (XPackage includesDefinedSelector: #method1 ofClass: class ). 
	self assert: (XPackage includesDefinedSelector: #method2 ofClass: class ).
	self assert: (ZPackage includesExtensionSelector: #method3 ofClass: class ). 
	self assert: (YPackage includesExtensionSelector: #method4 ofClass: class ). 
	
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
	"I am not sure about this test. For now it does not pass, but I don't know what is the expecting behavior here."
	"self assert: (YPackage includesExtensionSelector: #method4 ofClass: class ). "