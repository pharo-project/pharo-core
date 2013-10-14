testBasicLockNLockedProjectEnforce3
  | sawLock |
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  sawLock := false.
  Metacello new
    configuration: 'LockConfigurations';
    version: '1.1.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    onUpgrade: [ :ex :existing :new | ex allow	"trigger lock" ];
    onLock: [ :ex | 
          sawLock := true.
          ex pass ];
    onWarning: [ :ex | ex resume ];
    load.
  self assert: sawLock.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'dictionary://Metacello_Config_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil