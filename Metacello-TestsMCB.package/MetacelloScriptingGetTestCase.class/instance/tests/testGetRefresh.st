testGetRefresh
    "do load of 0.9.0, then `commit` new version and get ... should have ConfigurationOfExternalX-dkh.2"

    | projectSpec xxx |
    Smalltalk at: #'Metacello_XXX_Test_Repository' put: (xxx := MCDictionaryRepository new).
    self
        setUpRepositoryContents: #('ConfigurationOfExternalX-dkh.1')
        sourceRepo: configurationRepository
        targetRepo: xxx.
    Metacello new
        configuration: 'ExternalX';
        version: '0.9.0';
        repository: 'dictionary://Metacello_XXX_Test_Repository';
        load.
    self verify: 'ConfigurationOfExternalX' version: 'ConfigurationOfExternalX-dkh.1'.
    self
        setUpRepositoryContents: #('ConfigurationOfExternalX-dkh.2')
        sourceRepo: configurationRepository
        targetRepo: xxx.
    Metacello image
        configuration: 'ExternalX';
        get.
    self verify: 'ConfigurationOfExternalX' version: 'ConfigurationOfExternalX-dkh.2'