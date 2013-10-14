testBasicLockNLockedProjectEnforce4
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  Metacello new
    configuration: 'LockConfigurations';
    version: '1.0.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    onDowngrade: [ :ex | ex allow	"trigger lock" ];
    onLock: [ :ex :existing :new | 
          existing baseName = 'ExternalX'
            ifTrue: [ 
              "use locked version"
              ex disallow ].
          ex pass ];
    load.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'dictionary://Metacello_Config_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil