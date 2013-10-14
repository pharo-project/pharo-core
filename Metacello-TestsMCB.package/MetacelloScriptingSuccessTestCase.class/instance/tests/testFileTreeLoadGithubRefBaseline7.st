testFileTreeLoadGithubRefBaseline7
  "BaselineOfExternal reference from http://ss3.gemstone.com/ss/external.html using #baseline:with:"

  Metacello new
    baseline: 'GithubRefVII';
    repository: 'filetree://' , externalDirectory fullName;
    silently;
    load.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfGithubRefVII'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository: 'filetree://' , externalDirectory fullName.
  self
    verify: 'External-Core'
    loadedFrom: 'http://ss3.gemtalksystems.com/ss/external'.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfExternal'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository: 'http://ss3.gemtalksystems.com/ss/external'