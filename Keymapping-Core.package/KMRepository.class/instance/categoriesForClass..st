accessing
categoriesForClass: aClass
	| classCategories superclassCategories |
	aClass == Object
		ifTrue: [ ^ Set new ].
	classCategories := self categoryHolders at: aClass ifAbsent: [ Set new ].
	superclassCategories := self categoriesForClass: aClass superclass.
	^ classCategories union: superclassCategories