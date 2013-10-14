testEnsureLoad
  "https://github.com/dalehenrich/metacello-work/issues/199"

  "preload ConfigurationOfExternal-dkh.1 and force ensureLoad 
	ConfigurationOfExternal-dkh.2 which has version 0.9.1"

  Gofer new
    version: 'ConfigurationOfExternal-dkh.1';
    repository: externalRepository;
    load.
  Metacello new
    configuration: 'ExternalRef';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    get.
  Metacello new
    configuration: 'ExternalRef';
    version: '0.9.0';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    load.
  Metacello new
    configuration: 'ExternalRef';
    version: '0.9.1';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    load