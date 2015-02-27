spotterPackageFor: aStep
	<spotterOrder: 21>
	aStep listProcessor
		title: 'Packages';
		allCandidates: [ Array with: self package correspondingRPackage ];
		itemName: [ :item | item name ];
		itemIcon: [ Smalltalk ui icons iconNamed: #packageIcon ];
		filter: GTFilterSubstring