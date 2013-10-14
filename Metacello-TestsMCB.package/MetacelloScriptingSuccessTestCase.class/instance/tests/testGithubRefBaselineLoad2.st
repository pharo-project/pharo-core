testGithubRefBaselineLoad2
    "loading 'Core' and 'Tests' groups "

    Metacello new
        baseline: 'GithubRefXII';
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        load: #('External Core' 'External Tests').
    self
        validateExpectedConfigurationClassName: nil
        expectedConfigurationVersion: nil
        expectedConfigurationRepository: nil
        expectedBaselineClassName: 'BaselineOfGithubRefXII'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository: 'filetree://' , externalDirectory fullName.
    self
        verify: 'External-Core'
        loadedFrom: 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'.
    self
        verify: 'External-Tests'
        loadedFrom: 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'.
    self
        validateExpectedConfigurationClassName: nil
        expectedConfigurationVersion: nil
        expectedConfigurationRepository: nil
        expectedBaselineClassName: 'BaselineOfExternal'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository:
            'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'