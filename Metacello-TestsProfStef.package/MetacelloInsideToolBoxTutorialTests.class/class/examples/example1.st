example1
    "create baseline version 1.0-baseline"

    "self example1"

    (MetacelloToolBox configurationNamed: 'Example')
        createVersionMethod: 'baseline10:' inCategory: 'baselines' forVersion: '1.0-baseline';
        addSection: #common
            repository: 'http://smalltalkhub.com/mc/PharoExtras/ProfStef/main'
            requiredProjects: #()
            packages: #('ProfStef-Core' 'ProfStef-Tests')
            repositories: {}
            dependencies:
                {('ProfStef-Tests' -> #('ProfStef-Core'))}
            groups:
                {('default' -> #('Core')).
                ('Core' -> #('ProfStef-Core')).
                ('Tests' -> #('ProfStef-Tests')).
                ('Core Tests' -> #('Core' 'Tests'))}
            versionSpecsDo: [ :versionSpec | versionSpec blessing: #'baseline' ];
        commitMethod