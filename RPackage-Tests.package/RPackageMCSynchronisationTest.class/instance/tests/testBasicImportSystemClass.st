testBasicImportSystemClass
	"self debug: #testBasicImportSystemClass"
	| fooClass fooPackage |
	fooClass :=  Object subclass: #Foo
					instanceVariableNames: ''
					classVariableNames: ''
					poolDictionaries: ''
					category: 'FooPackage'.
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