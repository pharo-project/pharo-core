running
runPackages: aCollectionOfStrings
	^ aCollectionOfStrings do: [ :each | self runPackage: each ]