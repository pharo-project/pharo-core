update: anArray
	"User create a new package, MCWorkingCopy propagates changes. We react accordingly."
	
	super update: anArray.
	(anArray isArray and: [ anArray first = #registered ])
		ifTrue: [ | newPackage |
			"we first look if a RPackage has not yet been registered (by creating a category in the system).
			 In this case we don't want to register a new RPackage, but refer to this existing category"
			(self packageExactlyMatchingExtensionName: anArray second name) isNil
				ifTrue: [
					"if no package already exist, we add a new one"
					newPackage := self ensureExistAndRegisterPackageNamed: anArray second name.
					"a rpackage is matching exactly a sytem category. So all classes should be registered to their parent category. 
					We should not import categories" ]		
			"Probably can get a bug since we can have a package named AST and the category named AST-Core so should probably 
	pass the category as parameter"].

	(anArray isArray and: [ anArray first = #unregistered ])
		ifTrue: [ 
			"Not sure if we should remove the corresponding RPackage from the organizer. Monticello will notify a #unregistered change when we 'delete' a working copy, or when we 'unload' a workingCopy. 'Delete'  will only delete the MCWorkingCopy representing the package, but will let the category and classes existing in the system. 'Unload' will also remove all classes inside the category but will also let the category. So, for now,  in both cases it seems meaningfull to keep a RPackage pointing to the existing category. At least Monticello tests were expecting this behavior"
			"self unregisterPackageNamed: anArray second name."
			self flag: #cyrille. "shouldDoSomethingHere."
			"SD: my impression is that we should redo part of the MC browser. Delete package may move the classes to unpackaged" 
			"CD: When you 'delete' a MCPackage, it only remove the MC working copy, but let all the included classes in the system (in the same category). So now the question is: should we keep those classes in the same RPackage or move them to the #_UnpackagedPackage. As those classes are not moved to any other category for now , we could keep them in the same RPackage. 
			In any case, if deleting a MCPackage would move the classes to 'Unclassified' category, some announcement should be emitted , and RPackage should update itself ?  "
			].