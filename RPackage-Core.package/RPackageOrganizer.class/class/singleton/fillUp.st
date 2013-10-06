fillUp
	"self fillUp"
	self default initializeFromSystemStartingFromPackageOrganizer.
	"initializing from system might have generated some new packageInfo (because Package Inof lazily register system categories). Therefore, we should iterate a second time over all package infos:"
	self default initializeFromSystemStartingFromPackageOrganizer.
	"We register to system announcement here (and not from the instance side), because we don't want that to be dome each time we create a PackageOrganizer. Only  an updated Organizer (that means that it is synchronized with all current packages of the system (doen throught 'initializeFromSystem')) should register. If it is not the case, it could generate big problems for your image"
	self registerDefault. 