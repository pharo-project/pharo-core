private
packageNameOf: elem

		(elem class = PackageInfo)
			ifTrue: [^ elem packageName].
	
	elem isCompiledMethod 
		ifTrue: [MCWorkingCopy managersForClass: (elem methodClass) selector: (elem selector) do: [: package | ^ package packageName ]]	
			"(RPackageOrganizer default packageOf: elem ) name"
		ifFalse: [MCWorkingCopy managersForClass: elem  do: [: package | ^ package packageName ]]	
				"(RPackageOrganizer default packageDefiningOrExtendingMethod: elem ) name"