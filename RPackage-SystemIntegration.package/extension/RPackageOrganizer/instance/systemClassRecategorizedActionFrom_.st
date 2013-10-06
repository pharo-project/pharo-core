systemClassRecategorizedActionFrom: ann

	| class newRPackage oldRPackage newCategoryName oldCategoryName|
	"self flag: 'seems to be ok'."
	class := ann classAffected.	
	newCategoryName := ann newCategory asSymbol.
	oldCategoryName := ann oldCategory asSymbol.
	oldRPackage := self packageNamed: oldCategoryName.
	newRPackage := self packageNamed: newCategoryName ifAbsent: [
		"temporary code. For now adding a new category in the system does not emit correctly the corresponding event. The organizer is therefore not able to update itself. So here, if we don't find a matching package, we create a new one"
		self registerPackage: (self packageClass named: newCategoryName)
		].
	"we have to update the old package"
	oldRPackage removeClass: class.	
	"we have to update the new package"
	newRPackage importClass: class.
	"we should also import the metaClass"
	newRPackage importClass: class theMetaClass	.

	SystemAnnouncer uniqueInstance classRepackaged: class from: oldRPackage to: newRPackage.
	
	"we have to update the RPackageOrganizer.
	maybe the last update should be automatically done when adding or removing from a RPackage
	"
	"self default unregisterPackage: oldRPackage forClass: class.
	self default registerPackage: newRPackage forClass: class"