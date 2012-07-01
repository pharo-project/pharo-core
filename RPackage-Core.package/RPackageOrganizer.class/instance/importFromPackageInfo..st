initialize-release
importFromPackageInfo: info

	"PackageInfo lazy-initialize itself from all existing categories in the system. It can happen that we ask him for a non registered PackageInfo, and in this case it will just have to create a new PackageInfo with the right name. Then accessing the classes, methods is done throught the system interface, so no cache to update. It is not the same for RPackage. As rpackage initialize itself from package info, some categories can not been yet registered in RPackageOrganizer, which can be more problematic. For now we could create a packageInfo and import a new RPackage using the packageInfo interface (which is simplier than accessing categories then classes then methods, check what are extensions , ... )"
	|package|
	package := self ensureExistAndRegisterPackageNamed: info packageName.
			"My problem here: If a package appear here after one of its subcategories, all classes and methods would be re-affected to this package instead of the subcatagory. That's why I focus only on classes and methods that are not defined in subcategories, to avoid to override information set before"
			info classesNotDefinedInSubCategories  
				do: [ :each | package addClassDefinition: each ].
			info coreMethodsNotDefinedInSubCategories do: [ :each |
				"it seems that PackageInfo does not count methods from a trait inside the class package. We should do the same, as monticello expect this behavior"
				(each isValid and: [each isLocalSelector])
					ifTrue: [ package addMethod: each compiledMethod ] ].
			info extensionMethodsFromAllSystem  do: [ :each |
				"it seems that PackageInfo does not count methods from a trait inside the class package. We should do the same, as monticello expect this behavior"
				(each isValid and: [each isLocalSelector])
					ifTrue: [ package addMethod: each compiledMethod ]
					].
				
		^ package