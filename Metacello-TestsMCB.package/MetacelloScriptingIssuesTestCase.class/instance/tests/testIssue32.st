testIssue32
  "https://github.com/dalehenrich/metacello-work/issues/32"

  Metacello new
    configuration: 'Issue32';
    version: '0.9.0';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  self assert: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').
  self assert: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfIssue32'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'dictionary://Metacello_Configuration_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil