testIssue63h092
  "https://github.com/dalehenrich/metacello-work/issues/63"

  Metacello new
    configuration: 'Issue63';
    version: '0.9.2';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load: 'GoferFoo'.
  self
    verify: 'External-Core'
    loadedFrom:
      'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
        , '/repository'.
  self
    verifyPackageNotLoaded: 'External-Tests';
    verify: 'GoferFoo' version: 'GoferFoo-lr.2';
    verifyPackageNotLoaded: 'GoferBar'.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfIssue63'
    expectedConfigurationVersion: '0.9.2'
    expectedConfigurationRepository:
      'dictionary://Metacello_Configuration_Test_Repository'
    expectedBaselineClassName: 'BaselineOfExternal'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository:
      'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
        , '/repository'