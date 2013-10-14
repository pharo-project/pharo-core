testIssue115UpdateVersion
    self create10VersionIssue115.
    ((Smalltalk at: #'MetacelloTestConfigurationOfFoo') project version: '5.0') load.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        updateVersionMethodForVersion: '1.0'
            updateProjects: true
            updatePackages: true
            versionSpecsDo: [ :attribute :versionSpec | true ];
        commitMethod.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'version10:') = self version10Issue115UpdatedVersionSourceString