testFileTreeLoadGithubRefBaseline5
  "ConfigurationOfExternal reference from github://dalehenrich/external:configuration/repository using #configuration:with:"

  Metacello new
    baseline: 'GithubRefV';
    repository: 'filetree://' , externalDirectory fullName;
    silently;
    load.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfGithubRefV'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository: 'filetree://' , externalDirectory fullName.
  self
    verify: 'External-Core'
    loadedFrom:
      'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
        , '/repository'.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternal'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'github://dalehenrich/external:'
        , MetacelloScriptingResource externalConfigurationSHA , '/repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil