create14Baseline
    MetacelloConfigurationResource projectAttributes: #(#'platform' #'platform1.x' #'platform2.x').
    self create12Baseline.
    (Smalltalk at: self configurationName) compile: self projectSourceString classified: 'cat'.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'baseline14:' inCategory: 'baselines' forVersion: '1.4-baseline';
        addSectionsFrom: '1.2-baseline'
            forBaseline: true
            updateProjects: false
            updatePackages: false
            versionSpecsDo: [ :attribute :versionSpec | true ];
        commitMethod;
        modifyVersionMethodForVersion: '1.4-baseline';
        addSection: #'platform'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferBar')
            dependencies: {}
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform1.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GeauxBeau')
            dependencies: #()
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform2.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFaux')
            dependencies: #()
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform2.1.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFoo' 'GoferFaux')
            dependencies: {('GoferFaux' -> #('GoferFoo'))}
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform3.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFoo')
            dependencies: #()
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform3.1.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFoo' 'GoferFaux')
            dependencies: {('GoferFoo' -> #('GoferFaux'))}
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform4.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFoo')
            dependencies: #()
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'platform4.1.x'
            repository: nil
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GoferFoo' 'GoferFaux')
            dependencies: {('GoferFoo' -> #('GoferFaux'))}
            includes: #()
            files: #()
            repositories:
                {('MetacelloTestConfigurationOfFoo' -> {'dictionary://Metacello_Configuration_Test_Repository'})}
            preLoadDoIts: #()
            postLoadDoIts: #()
            supplyingAnswers: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        commitMethod