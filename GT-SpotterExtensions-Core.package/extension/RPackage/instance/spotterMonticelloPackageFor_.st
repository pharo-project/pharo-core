spotterMonticelloPackageFor: aStep
	<spotterOrder: 41>
	aStep listProcessor
		title: 'Monticello Package';
		allCandidates: [ Array with: self mcPackage ];
		itemIcon: [ Smalltalk ui icons iconNamed: #monticelloPackageIcon ];
		filter: GTFilterSubstring