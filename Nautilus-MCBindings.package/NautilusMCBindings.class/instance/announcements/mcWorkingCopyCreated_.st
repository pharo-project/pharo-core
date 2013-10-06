mcWorkingCopyCreated: anAnnouncement
	| package rpackage mcPackage |
	
	package := anAnnouncement package.
	package ifNil: [ ^ self ].
	rpackage := RPackageOrganizer default packageNamed: package name.
	mcPackage := bindingsRtoMC at: rpackage ifAbsent: [ ^ self ].
	(bindingsMCtoR at: mcPackage) do: [:pck | bindingsRtoMC removeKey: pck  ifAbsent: []]