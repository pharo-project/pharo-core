getPackagesList
	^ packagesListElements ifNil: [ packagesListElements := self loadPackagesListElements ].