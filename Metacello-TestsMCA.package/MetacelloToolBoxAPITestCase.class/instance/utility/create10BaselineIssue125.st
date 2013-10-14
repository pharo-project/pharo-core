create10BaselineIssue125
    (MetacelloToolBox configurationNamed: self configurationName asString)
        createVersionMethod: 'baseline100:' inCategory: 'baselines' forVersion: '1.0-baseline';
        addSection: #'common'
            repository: 'dictionary://' , self repositoryName asString
            requiredProjects: #('MetacelloTestConfigurationOfFoo')
            packages: #('GeauxFaux' 'GeauxBeau')
            repositories: {('MetacelloTestConfigurationOfFoo' -> {('dictionary://' , self repositoryName asString)})}
            dependencies:
                {('GeauxFaux' -> #('MetacelloTestConfigurationOfFoo')).
                ('GeauxBeau' -> #('GeauxFaux'))}
            groups:
                {('default' -> #('Core')).
                ('Core' -> #('GeauxFaux')).
                ('Tests' -> #('GeauxBeau')).
                ('Core Tests' -> #('Core' 'Tests'))}
            versionSpecsDo: [ :versionSpec | versionSpec blessing: #'baseline' ];
        commitMethod;
        modifyVersionMethodForVersion: '1.0-baseline' versionSpecsDo: [ :attribute :versionSpec | true ];
        addSection: (MetacelloMethodSectionPath with: #(#'pharo1.0.x' #'pharo1.3.x'))
            repository: nil
            requiredProjects: #()
            packages: #('GeauxFaux' 'GeauxBeau' 'GoferBar' 'GoferBeau' 'GoferFaux')
            dependencies: {('GeauxBeau' -> #('GeauxFaux'))}
            includes: {('GeauxFaux' -> #('GoferFaux'))}
            files: {('GoferBeau' -> 'GoferBeau.pharo')}
            repositories:
                {('GoferBar' -> #('http://example.com/repo1' 'http://example.com/repo2')).
                ('GoferFaux' -> #('http://example.com/repo2'))}
            preLoadDoIts: {('GoferBar' -> #'preloadGoferBar')}
            postLoadDoIts: {('GoferBeau' -> #'postloadGoferBar')}
            supplyingAnswers:
                {('GoferBeau'
                    ->
                        {{'list of packages'.
                        'Kernel* Collection*'}})}
            groups:
                {('default' -> #('Core')).
                ('Core' -> #('GeauxFaux')).
                ('Tests' -> #('GeauxBeau')).
                ('Core Tests' -> #('Core' 'Tests'))}
            versionSpecsDo: [ :versionSpec | versionSpec blessing: #'baseline' ];
        commitMethod