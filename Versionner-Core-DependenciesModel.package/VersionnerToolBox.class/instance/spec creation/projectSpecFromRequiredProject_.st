projectSpecFromRequiredProject: aRequiredProject
	| mcProject versionString projectReferenceSpec spec |
 
	mcProject := aRequiredProject configurationClass project.
	versionString := (mcProject hasVersion: #'stable')
        						ifTrue: [ #'stable' ]
        						ifFalse: [ #'bleedingEdge' ].
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