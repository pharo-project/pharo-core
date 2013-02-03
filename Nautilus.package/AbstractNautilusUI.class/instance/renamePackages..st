package
renamePackages: aCollection

	| name |
	aCollection
		 ifNotEmpty: [:packages |
			packages do: [:selectedPackage | 
				name := UIManager default request: 'New name of the package' initialAnswer: selectedPackage name title: 'Rename a package'.
				(name isNil or: [name isEmpty or: [ name = selectedPackage name]])
					ifFalse: [ | package currentIsSelected |
						currentIsSelected :=  selectedPackage = self selectedPackage.
						package := self browsedEnvironment packageOrganizer renamePackage: selectedPackage in: name.
						currentIsSelected ifTrue: [ self selectedPackage: package ].
						packagesSelection at: package put: true ]]]