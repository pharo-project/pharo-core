testImportFrom6D
    | toolbox source |
    self create15Baseline.
    (toolbox := MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'version15:' inCategory: 'versions' forVersion: '1.5';
        importFrom: '1.5-baseline'
            projectAttributes: #(#'common' #'outer')
            inactiveAttributes: #()
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attributeOrPath :versionSpec | 
                attributeOrPath == #'common'
                    ifTrue: [ versionSpec blessing: #'development' ].
                true ];
        commitMethod.
    self
        assert:
            (source := ((Smalltalk at: self configurationName) sourceCodeAt: #'version15:') asString) = self version15SourceStringA