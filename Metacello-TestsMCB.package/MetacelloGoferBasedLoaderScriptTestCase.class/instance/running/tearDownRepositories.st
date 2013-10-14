tearDownRepositories
    super tearDownRepositories.
    Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [  ].
    MCRepositoryGroup default
        removeRepository: monticelloRepository;
        removeRepository: configurationRepository