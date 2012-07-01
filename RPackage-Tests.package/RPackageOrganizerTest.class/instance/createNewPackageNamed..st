utility
createNewPackageNamed: aName

	| pack |
	self removePackageIfExist: aName.
	pack := self packageClass named: aName.
	createdPackages add: pack.
	^ pack