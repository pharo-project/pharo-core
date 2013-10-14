testIssue63i092
  "https://github.com/dalehenrich/metacello-work/issues/63"

  Metacello new
    configuration: 'Issue63';
    version: '0.9.2';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load: 'GoferBar'.
  self
    verifyPackageNotLoaded: 'External-Core';
    verifyPackageNotLoaded: 'External-Tests';
    verify: 'GoferBar' version: 'GoferBar-lr.1';
    verifyPackageNotLoaded: 'GoferFoo'.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfIssue63'
    expectedConfigurationVersion: '0.9.2'
    expectedConfigurationRepository:
      'dictionary://Metacello_Configuration_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil