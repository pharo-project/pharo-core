setUpRepositories
    super setUpRepositories.
    monticelloRepository := MetacelloMonticelloResource current monticelloRepository.
    Smalltalk at: #'Metacello_Gofer_Test_Repository' put: monticelloRepository.
    configurationRepository := MetacelloConfigurationResource current monticelloRepository.
    Smalltalk at: #'Metacello_Configuration_Test_Repository' put: configurationRepository.
    Smalltalk at: #'Metacello_Cache_Test_Repository' put: MCDictionaryRepository new