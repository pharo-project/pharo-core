private
retrieveRPackagesFor: aMCPackage


	^ (RPackageOrganizer default packages select: [:e | e name beginsWith: aMCPackage name ]) asSet