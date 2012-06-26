packages access
named: aString
	^ PackageOrganizer default packageNamed: aString ifAbsent: [(self new packageName: aString) register]