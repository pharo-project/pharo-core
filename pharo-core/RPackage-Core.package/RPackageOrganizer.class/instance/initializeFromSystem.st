initialize-release
initializeFromSystem
	""
	| package |
	self allManagers 
		do: [ :workingCopy |
			| info |
			info := workingCopy packageInfo.
			package := self ensureExistAndRegisterPackageNamed: info packageName.
			"My problem here: If a package appear here after one of its subcategories, all classes and methods would be re-affected to this package instead of the subcatagory. That's why I focus only on classes and methods that are not defined in subcategories, to avoid to override information set before"
			info classesNotDefinedInSubCategories  
				do: [ :each | package addClassDefinition: each ].
			info coreMethodsNotDefinedInSubCategories do: [ :each |
				each isValid
					ifTrue: [ package addMethod: each compiledMethod ] ].
			info extensionMethods  do: [ :each |
				each isValid
					ifTrue: [ package addMethod: each compiledMethod ] ] ]
		displayingProgress: 'Importing from MC managers'
	"strange PackageOrganizer default packages size is not equal to MCWorkingCopy allManagers size
	MCWorkingCopy allManagers size = PackageOrganizer default packages size.
	But MCWorkingCopy allManagers size is equal to RPackageOrganizer size (minus the defaylt package):
	MCWorkingCopy allManagers size = (RPackageOrganizer default packages reject: [:each | each name = '_DefaultPackage']) size.
	
	Let see what are the packages that are not registered in RPackage.
	PackageOrganizer default packages reject: [:each | RPackageOrganizer default includesPackageNamed: each packageName asSymbol].
	"
	
