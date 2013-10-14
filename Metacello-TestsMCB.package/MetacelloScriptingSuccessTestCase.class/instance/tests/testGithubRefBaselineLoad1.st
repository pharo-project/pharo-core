testGithubRefBaselineLoad1
    "loading 'Core' group only"

    Metacello new
        baseline: 'GithubRefXII';
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        load: 'External Core'.
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
    self verifyPackageNotLoaded: 'External-Tests'.
    self
        validateExpectedConfigurationClassName: nil
        expectedConfigurationVersion: nil
        expectedConfigurationRepository: nil
        expectedBaselineClassName: 'BaselineOfExternal'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository:
            'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'