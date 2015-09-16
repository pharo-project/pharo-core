buildChangeList
	rgMethod sourcePointer ifNil:[ ^ #() ].
	
	^ (SourceFiles
		changeRecordsFrom: rgMethod sourcePointer
		className: rgMethod className
		isMeta: rgMethod isMetaSide)
		collectWithIndex: [ :c :i | | rg |
			rg := c asRingDefinition.
			rg annotationNamed: #versionIndex put: i ]