testPrimeRegistryFromImage4
  "Get Configuration as decoy load naked Baseline ... wrong answer, but acceptable compromise ... naked baselines are a development time thing and often have locks associated with them testPrimeRegistryFromImage5 will validate lock usecase "

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
    primeRegistryFromImage: {(Smalltalk at: #'ConfigurationOfExternal')}
    baselineClasses: {(Smalltalk at: #'BaselineOfExternal')}.
  self validateConfiguration: rgstry