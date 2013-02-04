running
runPackage: aString
	^ self runClasses: (RPackage organizer packageNamed: aString) classes named: aString