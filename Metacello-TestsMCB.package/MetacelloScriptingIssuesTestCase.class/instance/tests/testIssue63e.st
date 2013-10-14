testIssue63e
  "https://github.com/dalehenrich/metacello-work/issues/63"

  Metacello new
    configuration: 'Issue63';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load: 'Tests'.
  self
    verify: 'External-Core'
    loadedFrom:
      'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
        , '/repository'.
  self
    verify: 'External-Tests'
    loadedFrom:
      'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
        , '/repository'.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfIssue63'
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'dictionary://Metacello_Configuration_Test_Repository'
    expectedBaselineClassName: 'BaselineOfExternal'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository:
      'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
        , '/repository'