initialize-release
initializeFromSystemStartingFromPackageOrganizer
	"this method will do the same job than initializeFromSystem except that it will start from all packages in the package organizer, instead of the ones of Monticello. Even when starting from the workingCopies of monticello, we ask to the corresponding package info to retrrieve information. Moreover, monticello does not refer all packages in packageOrganizer (surely because of some sub-categories not yet taken into account)"
	| package |
	PackageOrganizer default packages copy
		do: [ :aPackageInfo |
			| info |
			info := aPackageInfo.
			"PackageOrganizer contains a quite special packageInfo used by monticello test. It is subclass of MCDirtyPackageInfo. Its instance variable is initialized as #'Monticello-Mocks' but MCDirtyPackageInfo>> packageName return another name. The tests expect to have #'Monticello-Mocks' as name: "
			info methodCategoryPrefix = '*mcdirtypackage' ifTrue: [
				self ensureExistAndRegisterPackageNamed:   #'Monticello-Mocks'
				].
			self importFromPackageInfo: info]
		displayingProgress: 'Importing from PackageOrganizer'
	"strange PackageOrganizer default packages size is not equal to MCWorkingCopy allManagers size
	MCWorkingCopy allManagers size = PackageOrganizer default packages size.
	But MCWorkingCopy allManagers size is equal to RPackageOrganizer size (minus the defaylt package):
	MCWorkingCopy allManagers size = (RPackageOrganizer default packages reject: [:each | each name = '_DefaultPackage']) size.
	
	Let see what are the packages that are not registered in RPackage.
	PackageOrganizer default packages reject: [:each | RPackageOrganizer default includesPackageNamed: each packageName asSymbol].
	"
	
	