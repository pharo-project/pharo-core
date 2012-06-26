package
renamePackages: aCollection

	| name |
	aCollection
		 ifNotEmpty: [:packages |
			packages do: [:selectedPackage | 
				name := UIManager default request: 'New name of the package' initialAnswer: selectedPackage name title: 'Rename a package'.
				(name isNil or: [name isEmpty])
					ifFalse: [ | package |
						package := self browsedEnvironment packageOrganizer renamePackage: selectedPackage in: name ]]]