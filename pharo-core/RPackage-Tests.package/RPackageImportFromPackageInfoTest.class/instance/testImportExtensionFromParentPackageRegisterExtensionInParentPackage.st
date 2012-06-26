tests
testImportExtensionFromParentPackageRegisterExtensionInParentPackage

	"
	When importing from PackageInfo :
	test that when a package extend a class from a sub-category of this package, the extension method is well registered as extension method of this package "
	"self run: #testImportExtensionFromParentPackageRegisterExtensionInParentPackage"
	|tmpClass XPackage|
	[self createXPackage.
	self createXSubCategory.
	tmpClass := self createXSubCategoryClass.
	self createMethodNamed:  #stubMethod inClass: tmpClass inCategory: '*',self XPackageName asString.
	self emptyOrganizer importFromPackageInfo: (PackageOrganizer default packagesDictionary at: self XPackageName asString).
	self emptyOrganizer importFromPackageInfo: (PackageOrganizer default packagesDictionary at: self XSubcategoryName).
	XPackage := self emptyOrganizer packageNamed: self XPackageName.
	"this test does not work because we have two different organizers: one from emptyOrganizer and one reached by the propagation of event"
	"self assert: ((tmpClass>>#stubMethod) packageFromOrganizer: self emptyOrganizer)  = XPackage."
	self assert: (XPackage includesExtensionSelector:  #stubMethod ofClass: tmpClass).   
	] 

	ensure: [
		emptyOrganizer = nil
	] 	   