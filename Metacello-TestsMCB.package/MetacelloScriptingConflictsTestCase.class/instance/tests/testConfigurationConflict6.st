testConfigurationConflict6
  "Conflict must show up in a configuration loaded from a project spec"

  "variant of testFileTreeLoadConfigurationVersionsNotification5"

  "detect and disallow conflict"

  | newVersion existingVersion baseName |
  self testFileTreeLoadConfigurationVersions.
  Metacello new
    configuration: 'Conflict';
    version: '1.2.0';
    repository: 'filetree://' , configurationDirectory fullName;
    onConflict: [ :ex :existing :new | 
          baseName := existing baseName.
          existingVersion := existing configurationProjectSpec versionString.
          newVersion := new configurationProjectSpec versionString.
          ex disallow ];
    silently;
    load.
  self assert: baseName = 'ExternalX'.
  self assert: existingVersion = '0.9.1'.
  self assert: newVersion = '0.9.2'.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfConflict'
    expectedConfigurationVersion: '1.2.0'
    expectedConfigurationRepository:
      'filetree://' , configurationDirectory fullName
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'filetree://' , configurationDirectory fullName
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil