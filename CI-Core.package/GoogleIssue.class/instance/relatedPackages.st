acessing
relatedPackages
	^ relatedPackages ifNil: [ relatedPackages := self loadRelatedPackages ].
	