mcPackageSearch
	^ self mcPackageSearchRejectAll: [ :aPackage | false ] withInitialFilter: nil