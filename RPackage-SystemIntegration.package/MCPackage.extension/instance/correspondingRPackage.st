*RPackage-SystemIntegration
correspondingRPackage

	| symbol |
	symbol := Symbol readFromString: '#', self name.
	^ RPackageOrganizer default packageNamed: symbol ifAbsent: [ nil ]