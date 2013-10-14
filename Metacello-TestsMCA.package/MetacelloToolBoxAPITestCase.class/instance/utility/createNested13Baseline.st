createNested13Baseline
    MetacelloConfigurationResource projectAttributes: #(#'nested' #'outer' #'other').
    self create11Baseline.
    (Smalltalk at: self configurationName) compile: self projectSourceString classified: 'cat'.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'baseline13:' inCategory: 'baselines' forVersion: '1.3-baseline';
        addSectionsFrom: '1.0-baseline'
            forBaseline: true
            updateProjects: false
            updatePackages: false
            versionSpecsDo: [ :attribute :versionSpec | true ];
        commitMethod;
        modifyVersionMethodForVersion: '1.3-baseline';
        addSection: #(#(#'common') #(#'nested')) asMetacelloAttributePath
            repository: nil
            requiredProjects: #()
            packages: #('GoferFoo')
            dependencies: {}
            groups: {('UI' -> #('GoferFoo'))}
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'outer'
            repository: nil
            requiredProjects: #()
            packages: #('GoferFaux' 'GeauxBeau')
            dependencies: {('GoferFaux' -> #('GoferFoo'))}
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #(#(#'outer') #(#'nested'))
            repository: nil
            requiredProjects: #()
            packages: #('GoferBeau')
            dependencies: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        addSection: #'other'
            repository: nil
            requiredProjects: #()
            packages: #('GoferBeau' 'GoferBar' 'GeauxBeau')
            dependencies:
                {('GoferBeau' -> #('MetacelloTestConfigurationOfFoo')).
                ('GoferBar' -> #('GeauxFaux'))}
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        commitMethod