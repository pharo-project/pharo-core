testConfigurationConflict5
  "Conflict must show up in a configuration loaded from a project spec ... using onUpgrade:"

  "variant of testFileTreeLoadConfigurationVersionsNotification2"

  | baseName |
  self testFileTreeLoadConfigurationVersion.
  Metacello new
    configuration: 'Conflict';
    version: '1.0.0';
    repository: 'filetree://' , configurationDirectory fullName;
    onUpgrade: [ :ex :existing | 
          baseName := existing baseName.
          ex allow ];
    silently;
    load.
  self assert: baseName = 'ExternalX'.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfConflict'
    expectedConfigurationVersion: '1.0.0'
    expectedConfigurationRepository:
      'filetree://' , configurationDirectory fullName
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'dictionary://Metacello_Conflict_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil