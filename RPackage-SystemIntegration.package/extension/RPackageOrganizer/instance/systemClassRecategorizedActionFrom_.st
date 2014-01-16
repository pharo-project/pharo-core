systemClassRecategorizedActionFrom: ann
	| class newRPackage oldRPackage newCategoryName oldCategoryName|
	
	class := ann classAffected.	

	newCategoryName := ann newCategory asSymbol.
	oldCategoryName := ann oldCategory asSymbol.
	oldRPackage := self packageMatchingExtensionName: oldCategoryName includingClass: class.
	newRPackage := (self packageMatchingExtensionName: newCategoryName) 
		ifNil: [ self registerPackage: (self packageClass named: newCategoryName) ].

	oldRPackage removeClass: class.	
	newRPackage addClass: class.
	newRPackage 
		addClassDefinition: class 
		toClassTag: class category asSymbol.
	newRPackage addClass: class theMetaClass	.

	SystemAnnouncer uniqueInstance 
		classRepackaged: class 
		from: oldRPackage 
		to: newRPackage.