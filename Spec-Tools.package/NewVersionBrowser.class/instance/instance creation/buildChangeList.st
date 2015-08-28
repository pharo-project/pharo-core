buildChangeList
	rgMethod sourcePointer ifNil:[ ^#[] ].
	
	"TODO: Does it really need to get realClass?"
	^ (SourceFiles
		changeRecordsFrom: rgMethod sourcePointer
		className: rgMethod realClass theNonMetaClass name
		isMeta: rgMethod realClass isMeta)
		collectWithIndex: [ :c :i | | rg |
			rg := c asRingDefinition.
			rg annotationNamed: #versionIndex put: i ]