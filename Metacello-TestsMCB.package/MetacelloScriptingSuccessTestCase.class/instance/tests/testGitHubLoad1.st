testGitHubLoad1
    Metacello new
        baseline: 'External';
        repository: 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository';
        load.
    self
        verify: 'External-Core'
        loadedFrom: 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'.
    self
        validateExpectedConfigurationClassName: nil
        expectedConfigurationVersion: nil
        expectedConfigurationRepository: nil
        expectedBaselineClassName: 'BaselineOfExternal'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository:
            'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'