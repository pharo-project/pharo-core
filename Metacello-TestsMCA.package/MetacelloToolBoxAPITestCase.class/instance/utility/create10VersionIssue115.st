create10VersionIssue115
    MetacelloConfigurationResource projectAttributes: #(#'nested').
    self create10BaselineIssue115.
    (Smalltalk at: self configurationName) compile: self projectSourceString classified: 'cat'.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'version10:' inCategory: 'versions' forVersion: '1.0';
        importFrom: '1.0-baseline'
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attributeOrPath :versionSpec | 
                attributeOrPath == #'common'
                    ifTrue: [ versionSpec blessing: #'development' ].
                true ];
        commitMethod