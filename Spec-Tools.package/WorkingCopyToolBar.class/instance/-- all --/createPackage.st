createPackage
	| name |
	name := UIManager default request: 'Name of package:' translated.
	name isEmptyOrNil
		ifTrue: [ ^ self ].
	RPackageOrganizer default registerPackageNamed: name.
	MCWorkingCopy forPackage: (MCPackage new name: name)