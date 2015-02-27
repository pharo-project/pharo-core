spotterMonticelloWorkingCopyFor: aStep
	<spotterOrder: 42>
	aStep listProcessor
		title: 'Monticello Working Copy';
		allCandidates: [ Array with: self mcPackage workingCopy ];
		itemIcon: [ Smalltalk ui icons iconNamed: #versionControlIcon ];
		filter: GTFilterSubstring