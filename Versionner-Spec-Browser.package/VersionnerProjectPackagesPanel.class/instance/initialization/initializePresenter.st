initializePresenter
	"Initialize widgets behavior"

	packagesList whenSelectedItemsChanged: [:selection |
		removePackageButton enabled: selection notEmpty.
		editPackageButton enabled: selection notEmpty ].
		
	packageChangesButton action: [ "(MCVersionInspector new version: packages selectedItem workingCopy ) show" ] .
	
	addPackageButton action: [ self addPackage ].
	removePackageButton action: [ self removeSelectedPackage ].
	editPackageButton action: [ self editSelectedPackageRequirements ].