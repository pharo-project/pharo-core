*gofer-core-accessing
goferReferences
	| versionNames |
	versionNames := [ self allVersionNames ]
		on: Error
		do: [ :error | ^ GoferRepositoryError signal: error messageText repository: self ].
	^ versionNames
		collect: [ :each | GoferResolvedReference name: each repository: self ]