create10BaselineIssue115
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'baseline100:' inCategory: 'baselines' forVersion: '1.0-baseline';
        addSection: #'common'
            repository: nil
            requiredProjects: #()
            packages: #('GoferFoo' 'GoferBar')
            dependencies: {('GoferBar' -> #('GoferFoo'))}
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'nested'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFoo')
            dependencies: {('GoferFoo' -> #('MetacelloTestConfigurationOfFoo'))}
            includes: #()
            files: #()
            repositories: {('MetacelloTestConfigurationOfFoo' -> {('dictionary://' , self repositoryName asString)})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        commitMethod