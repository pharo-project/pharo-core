testIssue59
  "https://github.com/dalehenrich/metacello-work/issues/59"

  "load with no errors"

  "same as testIssue47, except that ConfigurationOfIssue59 uses MetacelloVersionNumber instead of MetacelloSemanticVersionNumber, so 1.0 is a valid version number"

  Metacello new
    configuration: 'Issue59';
    version: '1.0';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    silently;
    load.
  self assert: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').
  self assert: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfIssue59'
    expectedConfigurationVersion: '1.0'
    expectedConfigurationRepository:
      'dictionary://Metacello_Configuration_Test_Repository'
    expectedBaselineClassName: 'BaselineOfIssue32'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository:
      'dictionary://Metacello_External_Test_Repository'