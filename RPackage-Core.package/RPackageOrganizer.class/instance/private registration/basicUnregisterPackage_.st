basicUnregisterPackage: aPackage
	"Unregister the specified package from the list of registered packages. Raise the announcement RPackageUnregistered. This is a low level action. It does not unregister the back pointer from classes to packages or any other information managed by the organizer"
	
	| symbol |
	symbol := aPackage name asSymbol.
	packages
		removeKey: symbol
		ifAbsent: [ self reportExtraRemovalOf: aPackage ]