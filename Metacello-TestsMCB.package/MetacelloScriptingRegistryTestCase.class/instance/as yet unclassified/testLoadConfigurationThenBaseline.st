testLoadConfigurationThenBaseline
  "Load project from configuration, then load project from baseline"

  Metacello new
    configuration: 'External';
    version: '0.9.0';
    repository: 'filetree://' , externalDirectory fullName;
    load.
  Metacello new
    baseline: 'External';
    repository:
        'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA
            , '/repository';
    load.
  self validateBaseline: MetacelloProjectRegistration registry