setUpRepositories
    super setUpRepositories.
    Smalltalk at: #'Metacello_Configuration_Test_Repository' put: configurationRepository.
    Smalltalk at: #'Metacello_External_Test_Repository' put: externalRepository