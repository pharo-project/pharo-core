initialization
initialize: aString
	self initialize.
	packageName := aString.
	packages := RPackageOrganizer default packages 
		select: [ :each | each name = packageName or: [ each name beginsWith: packageName, '-' ] ]