testImportSystemClassWithSubCategory
	"self debug: #testImportSystemClassWithSubCategory"
	"indeed the user may have created a class in the category Foo-Core, and after created
	a package only named Foo. The classes in category Foo-Core should be added to Foo. But
	some other packages and categories starting with Foo may exist."
	| fooClass fooPackage |
	fooClass :=  Object subclass: #Foo
					instanceVariableNames: ''
					classVariableNames: ''
					poolDictionaries: ''
					category: 'FooPackage-Core'.
	fooClass compileSilently: 'foo ^ 1' classified: 'foo'.
	fooClass compileSilently: 'fooBar ^ 2' classified: 'foo'.
	fooClass compileSilently: 'fooFooBar ^ 3' classified: 'foo'.
	fooClass class compileSilently: 'fooClassSide ^ 1' classified: 'foo'.
	fooClass compileSilently: 'zork ^ 4' classified: '*zork'.
	fooPackage := self packageClass named: #FooPackage.
	fooPackage importCategory.
	self assert: (fooPackage includesDefinedSelector: #foo ofClass: fooClass).
	self assert: (fooPackage includesDefinedSelector: #fooBar ofClass: fooClass).
	self assert: (fooPackage includesDefinedSelector: #fooFooBar ofClass: fooClass).
	self deny: (fooPackage includesDefinedSelector: #zork ofClass: fooClass).
	self assert: (fooPackage includesDefinedSelector: #fooClassSide ofClass: fooClass class).