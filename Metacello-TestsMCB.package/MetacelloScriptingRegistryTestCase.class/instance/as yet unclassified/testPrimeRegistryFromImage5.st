testPrimeRegistryFromImage5
  "Get Configuration as decoy. Load naked Baseline. Lock naked Baseline"

  | rgstry original |
  Metacello new
    configuration: 'External';
    version: '0.9.1';
    repository: 'filetree://' , externalDirectory fullName;
    get.
  Metacello new
    baseline: 'External';
    repository:
        'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
            , '/repository';
    load.
  self validateBaseline: MetacelloProjectRegistration registry.
  MetacelloProjectRegistration resetRegistry.
  Metacello new
    baseline: 'External';
    repository:
        'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
            , '/repository';
    lock.
  rgstry := MetacelloProjectRegistration registry.
  rgstry
    primeRegistryFromImage: {(Smalltalk at: #'ConfigurationOfExternal')}
    baselineClasses: {(Smalltalk at: #'BaselineOfExternal')}.
  self validateBaseline: rgstry