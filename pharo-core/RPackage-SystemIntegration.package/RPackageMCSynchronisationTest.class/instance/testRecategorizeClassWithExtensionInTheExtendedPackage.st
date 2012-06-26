tests - operations on classes
testRecategorizeClassWithExtensionInTheExtendedPackage
	"test that when we recategorize a class with extension methods in the corresponding extended package, the extension methods become defined methods"

			|XPackage YPackage class|
			self addXCategory.
			self addYCategory.
			XPackage := self organizer packageNamed: #XXXXX.
			YPackage := self organizer packageNamed: #YYYYY.
			
			class := self createNewClassNamed: 'NewClass' inCategory: 'XXXXX'.
			self createMethodNamed: #RPackageTestsExtensionMethod inClass: class  inCategory: '*yyyyy'.  
			self assert: (self organizer packageOf: class) = XPackage. 
			self assert: (YPackage extensionSelectors includes: #RPackageTestsExtensionMethod). 
			self deny: ((XPackage definedSelectorsForClass: class) includes: #RPackageTestsExtensionMethod). 
		
			class category: 'YYYYY'.
			self assert: (self organizer packageOf: class) = YPackage. 
			self deny: (self organizer packageOf: class) = XPackage. 
			self deny: ((XPackage definedSelectorsForClass: class) includes: #RPackageTestsExtensionMethod).
			self assert: ((YPackage definedSelectorsForClass: class)  includes: #RPackageTestsExtensionMethod). 
			self deny: (YPackage extensionSelectors includes: #RPackageTestsExtensionMethod). 