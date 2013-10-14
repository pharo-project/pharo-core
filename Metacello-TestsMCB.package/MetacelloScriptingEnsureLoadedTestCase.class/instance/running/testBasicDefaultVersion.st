testBasicDefaultVersion
  "https://github.com/dalehenrich/metacello-work/issues/198"

  | registration spec |
  Gofer new
    version: 'ConfigurationOfExternal-dkh.1';
    repository: externalRepository;
    load.
  Metacello new
    configuration: 'ExternalRef';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    get.
  registration := Metacello registrations
    detect: [ :each | each projectName = 'ExternalRef' ].
  spec := registration projectSpec.
  self assert: spec versionString = #'stable'