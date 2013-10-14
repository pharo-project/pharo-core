testLoadNGet
    "explicitly load ConfigurationOfExternalX-dkh.1 do load of 0.9.0, then get ... should have ConfigurationOfExternalX-dkh.2"

    | projectSpec |
    Gofer new
        version: 'ConfigurationOfExternalX-dkh.1';
        repository: configurationRepository;
        load.
    Metacello new
        configuration: 'ExternalX';
        version: '0.9.0';
        repository: 'dictionary://Metacello_XXX_Test_Repository';
        load.
    self verify: 'ConfigurationOfExternalX' version: 'ConfigurationOfExternalX-dkh.1'.
    projectSpec := Metacello registry
        configuration: 'ExternalX';
        list.
    self assert: projectSpec repositoryDescriptions asArray = #('dictionary://Metacello_XXX_Test_Repository').
    Metacello new
        configuration: 'ExternalX';
        repository: 'dictionary://Metacello_Config_Test_Repository';
        get.
    self verify: 'ConfigurationOfExternalX' version: 'ConfigurationOfExternalX-dkh.2'.
    projectSpec := Metacello registry
        configuration: 'ExternalX';
        list.
    self assert: projectSpec repositoryDescriptions asArray = #('dictionary://Metacello_Config_Test_Repository')