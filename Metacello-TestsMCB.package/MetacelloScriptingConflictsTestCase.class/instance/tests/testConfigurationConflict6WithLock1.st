testConfigurationConflict6WithLock1
  | newVersion existingVersion baseName |
  self testFileTreeLoadConfigurationVersions.
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.1';
    repository: 'filetree://' , configurationDirectory fullName;
    lock.
  Metacello new
    configuration: 'Conflict';
    version: '1.2.0';
    repository: 'filetree://' , configurationDirectory fullName;
    onLock: [ :ex | ex disallow ];
    onConflict: [ :ex :existing :new | 
          baseName := existing baseName.
          existingVersion := existing configurationProjectSpec versionString.
          newVersion := new configurationProjectSpec versionString.
          ex allow	"trigger lock" ];
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