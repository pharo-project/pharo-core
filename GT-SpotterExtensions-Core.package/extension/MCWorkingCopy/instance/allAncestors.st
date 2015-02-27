allAncestors
	^ self versionInfo 
		ifNotNilDo: [ :versionInfo | versionInfo allAncestors ]
		ifNil: [ #() ]