testConfigurationConflict9
  "Conflict must show up in a configuration loaded from a project spec"

  "variant of testConfigurationConflict3"

  | disallowed |
  self testFileTreeLoadConfigurationVersions.
  Metacello new
    configuration: 'Conflict';
    version: '1.1.0';
    repository: 'filetree://' , configurationDirectory fullName;
    silently;
    onDowngrade: [ :ex :existing :new | 
          existing baseName = 'ExternalX'
            ifTrue: [ 
              disallowed := existing baseName.
              ex disallow ].
          ex pass ];
    load.
  self assert: disallowed = 'ExternalX'.
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
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'filetree://' , configurationDirectory fullName
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil