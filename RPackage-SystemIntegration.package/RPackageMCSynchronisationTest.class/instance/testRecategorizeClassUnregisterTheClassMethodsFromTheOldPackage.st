tests - operations on classes
testRecategorizeClassUnregisterTheClassMethodsFromTheOldPackage
	"test that when we recategorize a class, the old package in which it was defined don't include its defined methods (not extensions) anymore"
	"self debug: #testRecategorizeClassUnregisterTheClassMethodsFromTheOldPackage"
		
	|XPackage YPackage ZPackage class|
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
	self deny: (XPackage includesDefinedSelector: #method1 ofClass: class ). 
	self deny: (XPackage includesExtensionSelector: #method1 ofClass: class ). 
	self deny: (XPackage includesDefinedSelector: #method2 ofClass: class ). 
	self deny: (XPackage includesExtensionSelector: #method2 ofClass: class ). 
	self deny: (XPackage includesDefinedSelector: #method3 ofClass: class ). 
	self deny: (XPackage includesExtensionSelector: #method3 ofClass: class ). 
	self deny: (XPackage includesDefinedSelector: #method4 ofClass: class ). 
	self deny: (XPackage includesExtensionSelector: #method4 ofClass: class ).