sunitPackages
	"Answers the SUnit-UI package, not all the infraestructure"
	^ Array 
		with: (RPackage organizer packageNamed:'SUnit-UI')
		with: (RPackage organizer packageNamed:'SUnit-Utilities')
