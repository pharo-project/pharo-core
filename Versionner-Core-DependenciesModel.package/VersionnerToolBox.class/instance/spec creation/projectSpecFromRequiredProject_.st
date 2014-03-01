projectSpecFromRequiredProject: aRequiredProject
	| mcProject versionString projectReferenceSpec spec |
 
	aRequiredProject configurationClass 
		ifNil: [ ConfigurationNotFound signal: aRequiredProject name , ' configuration class cannot be found!' ].
	mcProject := aRequiredProject configurationClass project.
	versionString := aRequiredProject version 
						ifNil: [ (mcProject hasVersion: #stable)
        								ifTrue: [ #stable ]
        								ifFalse: [ #bleedingEdge ] ]
						ifNotNilDo: [ :aVersion | aVersion ].
	projectReferenceSpec := mcProject projectSpec
					name: aRequiredProject displayName;
					className: aRequiredProject configurationClass name;
					versionString: versionString;
					yourself.
	spec := mcProject projectReferenceSpec
				name: aRequiredProject displayName;
        			projectReference: projectReferenceSpec.

      aRequiredProject repositories do: [ :repoString | spec repository: repoString ].
      aRequiredProject dependencies ifNotEmptyDo: [ :loadsList | spec projectReference loads: loadsList ].

	^ spec