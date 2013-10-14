create15Baseline
    MetacelloConfigurationResource projectAttributes: #(#'nested' #'outer' #'other').
    self create10Baseline.
    (Smalltalk at: self configurationName) compile: self projectSourceString classified: 'cat'.
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'baseline15:' inCategory: 'baselines' forVersion: '1.5-baseline';
        addSectionsFrom: '1.0-baseline'
            forBaseline: true
            updateProjects: false
            updatePackages: false
            versionSpecsDo: [ :attribute :versionSpec | true ];
        commitMethod;
        modifyVersionMethodForVersion: '1.5-baseline';
        addSection: #(#(#'outer' #'nested'))
            repository: nil
            requiredProjects: #()
            packages: #('GoferFaux')
            dependencies: #()
            groups: #()
            versionSpecsDo: [ :versionSpec |  ];
        commitMethod