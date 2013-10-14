create12Baseline
    MetacelloToolBox
        createBaseline: '1.2-baseline'
        for: self configurationName asString
        repository: 'dictionary://' , self repositoryName asString
        requiredProjects: #()
        packages: #('GeauxFaux' 'GeauxBeau')
        repositories: #()
        dependencies: {('GeauxBeau' -> #('GeauxFaux'))}
        groups:
            {('default' -> #('Core')).
            ('Core' -> #('GeauxFaux'))}