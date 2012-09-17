we are not sure
testImportSystallManagershSubCategoryAndAnotherCategory
	"self debug: #testImportSystemClassWithSubCategoryAndAnotherCategory"
	"indeed the user may have created a class in the category Foo-Core, and after created
	a package only named Foo. The classes in category Foo-Core should be added to Foo. But
	some other packages and categories starting with Foo may exist."
	| fooClass fooPackage fooClass2|
	fooClass := self createNewClassNamed: 'Foo' inCategory: 'FooPackage-Core'.
	fooClass compileSilently: 'foo ^ 1' classified: 'foo'.
	fooClass compileSilently: 'fooBar ^ 2' classified: 'foo'.
	fooClass compileSilently: 'fooFooBar ^ 3' classified: 'foo'.
	fooClass class compileSilently: 'fooClassSide ^ 1' classified: 'foo'.
	fooClass compileSilently: 'zork ^ 4' classified: '*zork'.

	fooClass2 := self createNewClassNamed: 'FooOther' inCategory: 'FooPackage-Other'.
	fooClass2 compileSilently: 'fooOther ^ 1' classified: 'what s up'.
	fooClass2 compileSilently: 'fooBarOther ^ 2' classified: 'dr'.
	fooClass2 class compileSilently: 'fooOtherClassSide ^ 1' classified: 'lovely carots'.
	fooClass2 compileSilently: 'zorkZork ^ 4' classified: '*zorkzork'.
	
	fooPackage := self packageClass named: #FooPackage.
	fooPackage importCategory.
	self assert: (fooPackage definedClasses size = 2).
	
	self assert: (fooPackage includesDefinedSelector: #foo ofClass: fooClass).
	self assert: (fooPackage includesDefinedSelector: #fooBar ofClass: fooClass).
	self assert: (fooPackage includesDefinedSelector: #fooFooBar ofClass: fooClass).
	self deny: (fooPackage includesDefinedSelector: #zork ofClass: fooClass).
	self assert: (fooPackage includesDefinedSelector: #fooClassSide ofClass: fooClass class).
	
	self assert: (fooPackage includesDefinedSelector: #fooOther ofClass: fooClass2).
	self assert: (fooPackage includesDefinedSelector: #fooBarOther ofClass: fooClass2).
	self deny: (fooPackage includesDefinedSelector: #zorkZork ofClass: fooClass2).
	self assert: (fooPackage includesDefinedSelector: #fooOtherClassSide ofClass: fooClass2 class).