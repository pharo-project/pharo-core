testFileTreeLoadGithubRefBaseline2
    "BaselineOfExternal reference from github://dalehenrich/external:957492f31b77026d81dcb165c07c69b2ad897781/repository using #baseline:with:"

    Metacello new
        baseline: 'GithubRefXX';
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        load.
    self
        validateExpectedConfigurationClassName: nil
        expectedConfigurationVersion: nil
        expectedConfigurationRepository: nil
        expectedBaselineClassName: 'BaselineOfGithubRefXX'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository: 'filetree://' , externalDirectory fullName.
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