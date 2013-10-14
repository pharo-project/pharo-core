testSymbolicLockNUnlockNload
  Metacello new
    configuration: 'ExternalX';
    version: #'stable';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  Metacello registry
    configuration: 'ExternalX';
    unlock.
  Metacello registry
    configuration: 'ExternalX';
    version: '0.9.1';
    load.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.1'
    expectedConfigurationRepository:
      'dictionary://Metacello_Config_Test_Repository'
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil