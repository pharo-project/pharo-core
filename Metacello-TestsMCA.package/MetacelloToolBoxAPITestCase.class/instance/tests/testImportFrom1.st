testImportFrom1
    | toolbox |
    self create10Baseline.
    (toolbox := MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'version10:' inCategory: 'versions' forVersion: '1.0';
        importFrom: '1.0-baseline'
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attributeOrPath :versionSpec | 
                attributeOrPath == #'common'
                    ifTrue: [ versionSpec blessing: #'development' ].
                true ];
        commitMethod.
    self assert: ((Smalltalk at: self configurationName) sourceCodeAt: #'version10:') = self version10SourceString