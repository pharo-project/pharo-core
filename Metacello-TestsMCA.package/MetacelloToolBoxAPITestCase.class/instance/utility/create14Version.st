create14Version
    self create14Baseline.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'version14:' inCategory: 'versions' forVersion: '1.4';
        importFrom: '1.4-baseline'
            projectAttributes: #(#'common' #'platform' #'platform1.x')
            inactiveAttributes: #(#(#'platform2.x' #'platform2.1.x') #(#'platform3.x' #'platform3.1.x'))
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attributeOrPath :versionSpec | 
                attributeOrPath == #'common'
                    ifTrue: [ versionSpec blessing: #'development' ].
                true ];
        commitMethod