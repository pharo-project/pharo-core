createComplex11Baseline
    MetacelloToolBox
        createBaseline: '1.1-baseline'
        for: self configurationName asString
        repository: 'dictionary://' , self repositoryName asString
        requiredProjects: #('MetacelloTestConfigurationOfFoo')
        packages: #('GeauxFaux' 'GeauxBeau' 'GoferBar' 'GoferBeau' 'GoferFaux')
        dependencies:
            {('GeauxFaux' -> #('MetacelloTestConfigurationOfFoo')).
            ('GeauxBeau' -> #('GeauxFaux'))}
        includes: {('GeauxFaux' -> #('GoferFaux'))}
        files: {('GoferBeau' -> 'GoferBeau.pharo')}
        repositories:
            {('GoferBar' -> #('http://example.com/repo1' 'http://example.com/repo2')).
            ('GoferFaux' -> #('http://example.com/repo2')).
            ('MetacelloTestConfigurationOfFoo' -> {('dictionary://' , self repositoryName asString)})}
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