tests
testTestingPackageExistence

	| extensionCategory package existingPackage |
	existingPackage := (RPackage named: 'RPackage-Tests') register; yourself.
	extensionCategory := existingPackage name, '-subcategory'.
	package := RPackage named: extensionCategory.
	packageOrganizer := package organizer.
	self deny: (packageOrganizer includesPackageNamed: extensionCategory).

	packageOrganizer checkPackageExistsOrRegister: extensionCategory.

	self deny: (packageOrganizer includesPackageNamed: extensionCategory).