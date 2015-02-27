nextAncestors
	^ self versionInfo 
		ifNotNilDo: [ :versionInfo | versionInfo ancestors ]
		ifNil: [ #() ]