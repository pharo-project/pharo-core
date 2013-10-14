testIssue5A
    | expectException issues validationError |
    expectException := false.
    [ 
    MetacelloToolBox
        createBaseline: '1.0-baseline'
        for: self configurationName asString
        repository: 'dictionary://' , self repositoryName asString
        requiredProjects: #('MetacelloTestConfigurationOfFoo')
        packages: #('MetacelloTestConfigurationOfFoo')
        repositories: #()
        dependencies: {('MetacelloTestConfigurationOfFoo' -> #('MetacelloTestConfigurationOfFoo'))}
        groups: {('MetacelloTestConfigurationOfFoo' -> #('MetacelloTestConfigurationOfFoo'))} ]
        on: MetacelloValidationFailure
        do: [ :ex | 
            issues := ex issues.
            expectException := true ].
    self assert: expectException.
    self assert: issues size == 1.
    validationError := issues at: 1.
    self assert: validationError reasonCode == #'versionCompositionError'.
    self assert: validationError callSite == #'validateProject:version:'