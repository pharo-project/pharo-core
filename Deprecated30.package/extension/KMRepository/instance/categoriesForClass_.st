categoriesForClass: aClass
	| classCategories superclassCategories |
	self deprecated: 'Static shortcuts are not used any more'.
	aClass == Object
		ifTrue: [ ^ Set new ].
	classCategories := self categoryHolders at: aClass ifAbsent: [ Set new ].
	superclassCategories := self categoriesForClass: aClass superclass.
	^ classCategories union: superclassCategories