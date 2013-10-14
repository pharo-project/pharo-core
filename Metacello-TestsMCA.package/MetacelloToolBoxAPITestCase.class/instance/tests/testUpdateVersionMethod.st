testUpdateVersionMethod
    "see testImportFrom5"

    self create14Version.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        updateVersionMethodForVersion: '1.4'
            projectAttributes: #(#'common' #'platform' #'platform2.x' #'platform2.1.x')
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attribute :versionSpec | true ];
        commitMethod.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'version14:') asString = self version14SourceStringUpdated.
    ((Smalltalk at: #'MetacelloTestConfigurationOfFoo') project version: '5.0') load.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        updateVersionMethodForVersion: '1.4'
            projectAttributes: #(#'common' #'platform' #'platform2.x' #'platform2.1.x')
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attribute :versionSpec | true ];
        commitMethod.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'version14:') asString = self version14SourceStringUpdated50