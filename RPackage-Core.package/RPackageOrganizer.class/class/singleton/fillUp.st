fillUp
	"self fillUp"
	self default initializeFromSystemStartingFromPackageOrganizer.
	"initializing from system might have generated some new packageInfo (because Package Inof lazily register system categories). Therefore, we should iterate a second time over all package infos:"
	self default initializeFromSystemStartingFromPackageOrganizer.
