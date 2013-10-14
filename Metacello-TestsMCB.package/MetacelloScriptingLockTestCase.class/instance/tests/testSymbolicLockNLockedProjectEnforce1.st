testSymbolicLockNLockedProjectEnforce1
  | sawLockWarning |
  Metacello new
    configuration: 'ExternalX';
    version: #'stable';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  sawLockWarning := false.
  Metacello new
    configuration: 'LockConfigurations';
    version: '1.1.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    onWarning: [ :ex | 
          sawLockWarning := true.
          ex resume ];
    load.
  self assert: sawLockWarning.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'dictionary://Metacello_Config_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil