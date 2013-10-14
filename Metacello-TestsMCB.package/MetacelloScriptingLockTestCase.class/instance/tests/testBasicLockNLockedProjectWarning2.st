testBasicLockNLockedProjectWarning2
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    lock.
  Metacello new
    configuration: 'LockConfigurations';
    version: '1.0.0';
    repository: 'dictionary://Metacello_Config_Test_Repository';
    load.
  self
    should: [ 
      Metacello new
        configuration: 'LockConfigurations';
        version: '1.1.0';
        repository: 'dictionary://Metacello_Config_Test_Repository';
        load ]
    raise: Warning