testImportFrom4
    "change order of project attributes relative to import3...i.e., not reversed which is default"

    | toolbox source |
    self createNested13Baseline.
    (toolbox := MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'version13:' inCategory: 'versions' forVersion: '1.3';
        importFrom: '1.3-baseline'
            projectAttributes: #(#'common' #'other' #'nested' #'outer')
            inactiveAttributes: #()
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attributeOrPath :versionSpec | 
                attributeOrPath == #'common'
                    ifTrue: [ versionSpec blessing: #'development' ].
                attributeOrPath = #(#(#'common') #(#'nested')) asMetacelloAttributePath
                    ifTrue: [ versionSpec description: 'nested for:do: section' ].
                true ];
        commitMethod.
    self
        assert:
            (source := ((Smalltalk at: self configurationName) sourceCodeAt: #'version13:') asString) = self version13SourceString4