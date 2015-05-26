do: aBlock displaying: aString

	self bypassProgressBars ifTrue: [ ^super do: aBlock displaying: aString ].
	aString
		displayProgressFrom: 0 to: 2
		during: [ :bar |
			bar current: 1.
			RPackageSet withCacheDo: [ aBlock value ].
			bar current: 2 ]