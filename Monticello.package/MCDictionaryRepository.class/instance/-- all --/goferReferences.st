goferReferences
	^ self allVersionInfos collect: [ :each | GoferResolvedReference name: each name repository: self ]