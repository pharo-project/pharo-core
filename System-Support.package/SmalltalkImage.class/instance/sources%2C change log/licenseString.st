licenseString
	^ self licenseStringTemplate format: (Array with: Date today year asString)