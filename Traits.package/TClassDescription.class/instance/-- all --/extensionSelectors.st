extensionSelectors
	^ self extendingPackages flatCollect: [ :each | each extensionSelectorsForClass: self ]