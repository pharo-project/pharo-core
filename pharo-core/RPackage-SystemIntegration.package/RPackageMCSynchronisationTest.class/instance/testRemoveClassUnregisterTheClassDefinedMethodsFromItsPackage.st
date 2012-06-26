tests - operations on classes
testRemoveClassUnregisterTheClassDefinedMethodsFromItsPackage
	"test that when we remove a class, the class methods defined in the parent package (not extensions) are all removed  from its parent Package"
	
			|XPackage  class|
			self addXCategory.
			XPackage := self organizer packageNamed: #XXXXX.
			class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
			self createMethodNamed: 'stubMethod' inClass: class  inCategory: 'classic category'. 
			
			self assert: (XPackage includesDefinedSelector: #stubMethod ofClass: class). 
			Smalltalk removeClassNamed: 'NewClass'. 
			self deny: (XPackage includesDefinedSelector: #stubMethod ofClass: class). 
			self deny: (XPackage includesExtensionSelector: #stubMethod ofClass: class). 
			self deny: (XPackage includesSelector: #stubMethod ofClass: class). 