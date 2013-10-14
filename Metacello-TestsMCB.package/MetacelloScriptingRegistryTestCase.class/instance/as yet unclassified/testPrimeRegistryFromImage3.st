testPrimeRegistryFromImage3
  "Get Configuration as decoy. Load naked Baseline"

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
  rgstry := MetacelloProjectRegistration registry.
  rgstry
    primeRegistryFromImage: {}
    baselineClasses: {(Smalltalk at: #'BaselineOfExternal')}.
  self validateBaseline: rgstry