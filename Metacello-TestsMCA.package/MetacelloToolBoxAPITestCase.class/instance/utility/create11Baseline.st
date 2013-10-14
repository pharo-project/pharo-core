create11Baseline
    MetacelloToolBox
        createBaseline: '1.0-baseline'
        for: self configurationName asString
        repository: 'dictionary://' , self repositoryName asString
        requiredProjects: #('MetacelloTestConfigurationOfFoo')
        packages: #('GeauxFaux')
        repositories: {('MetacelloTestConfigurationOfFoo' -> {('dictionary://' , self repositoryName asString)})}
        dependencies: {('GeauxFaux' -> #('MetacelloTestConfigurationOfFoo'))}
        groups:
            {('default' -> #('Core')).
            ('Core' -> #('GeauxFaux'))}