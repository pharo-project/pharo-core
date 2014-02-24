createProjectReferenceSpec: aProject
	|  projectReferenceProject versionString |
	
	 projectReferenceProject := aProject configurationClass project.
	 versionString := (projectReferenceProject hasVersion: #'stable')
        						ifTrue: [ #'stable' ]
        						ifFalse: [ #'bleedingEdge' ].
"    ^ project projectReferenceSpec
        name: aProject displayName;
        projectReference:
                (project projectSpec
                        name: projectBaseName;
                        className: configurationName;
                        versionString: versionString;
                        yourself);
        yourself"