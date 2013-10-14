testFileTreeLoadGithubRefBaseline6
  "ConfigurationOfExternal reference from http://ss3.gemstone.com/ss/external.html using #configuration:with:"

  Metacello new
    baseline: 'GithubRefVI';
    repository: 'filetree://' , externalDirectory fullName;
    silently;
    load.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfGithubRefVI'
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
    expectedConfigurationRepository: 'http://ss3.gemtalksystems.com/ss/external'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil