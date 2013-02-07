private
comparePackageSet: packageSetCollection withPackageInfo: packageInfoCollection
	| onlyInPackageSet onlyInPackageInfo |
	
	self assert: packageSetCollection size equals: packageInfoCollection size.
	
	self
		assert: (self equalElementsBetween: packageSetCollection and: packageInfoCollection)
		description: [
			onlyInPackageSet := packageSetCollection \ packageInfoCollection.
			onlyInPackageInfo := packageInfoCollection \ packageSetCollection.
			String streamContents: [ :s| 
				s 
					nextPutAll: 'PackageSet and PackageInfo results are not equal.'; cr;
					nextPutAll: 'PackageSet contains additional '; print: onlyInPackageSet size; nextPutAll: ' Element(s)'; cr;
					nextPutAll: 'PackageInfo contains additional '; print: onlyInPackageInfo size; nextPutAll: ' Element(s)' ]]