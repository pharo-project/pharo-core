initialization
importFromPackageInfo: info
	"PackageInfo lazy-initialize itself from all existing categories in the system. It can happen that we ask him for a non registered PackageInfo, and in this case it will just have to create a new PackageInfo with the right name. Then accessing the classes, methods is done throught the system interface, so no cache to update. It is not the same for RPackage. As rpackage initialize itself from package info, some categories can not been yet registered in RPackageOrganizer, which can be more problematic. For now we could create a packageInfo and import a new RPackage using the packageInfo interface (which is simplier than accessing categories then classes then methods, check what are extensions , ... )"
	
	| package |

	package := self ensureExistAndRegisterPackageNamed: info packageName.

	self importFromPackageInfoPass1: info package: package.
	self importFromPackageInfoPass2: info package: package.

	^ package