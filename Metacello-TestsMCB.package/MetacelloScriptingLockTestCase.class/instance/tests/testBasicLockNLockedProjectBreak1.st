testBasicLockNLockedProjectBreak1
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  Metacello new
    configuration: 'LockConfigurations';
    version: '1.1.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    onLock: [ :ex | ex allow	"break lock" ];
    load.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'dictionary://Metacello_Config_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil