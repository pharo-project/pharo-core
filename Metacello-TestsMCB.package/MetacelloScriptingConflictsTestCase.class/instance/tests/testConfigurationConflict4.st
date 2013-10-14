testConfigurationConflict4
  "Conflict must show up in a configuration loaded from a project spec"

  "variant of testFileTreeLoadConfigurationVersionsNotification4"

  "explicitly a downgrade"

  self testFileTreeLoadConfigurationVersions.
  [ 
  Metacello new
    configuration: 'Conflict';
    version: '1.1.0';
    repository: 'filetree://' , configurationDirectory fullName;
    silently;
    load ]
    on: MetacelloAllowProjectDowngrade
    do: [ :ex | ex allow ].
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfConflict'
    expectedConfigurationVersion: '1.1.0'
    expectedConfigurationRepository:
      'filetree://' , configurationDirectory fullName
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'dictionary://Metacello_Conflict_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil