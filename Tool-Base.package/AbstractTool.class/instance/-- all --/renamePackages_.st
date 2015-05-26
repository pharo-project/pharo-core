renamePackages: aCollection

	aCollection
		 ifNotEmpty: [ :packages |
			packages do: [ :selectedPackage | self renamePackage: selectedPackage ] ].