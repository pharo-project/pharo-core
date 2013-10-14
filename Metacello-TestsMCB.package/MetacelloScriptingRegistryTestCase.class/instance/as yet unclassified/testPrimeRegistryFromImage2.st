testPrimeRegistryFromImage2
  "Load Configuration/Baseline then naked Configuration"

  | rgstry original |
  Metacello new
    configuration: 'External';
    version: '0.9.1';
    repository: 'filetree://' , externalDirectory fullName;
    load.
  self validateConfiguration: MetacelloProjectRegistration registry.
  Metacello new
    configuration: 'External';
    version: '0.9.0';
    repository: 'filetree://' , externalDirectory fullName;
    load.
  original := MetacelloProjectRegistration registry copy.
  self validateConfiguration: MetacelloProjectRegistration registry.
  MetacelloProjectRegistration resetRegistry.
  rgstry := MetacelloProjectRegistration registry.
  rgstry
    primeRegistryFromImage: {(Smalltalk at: #'ConfigurationOfExternal')}
    baselineClasses: {(Smalltalk at: #'BaselineOfExternal')}.
  self validateConfiguration: rgstry