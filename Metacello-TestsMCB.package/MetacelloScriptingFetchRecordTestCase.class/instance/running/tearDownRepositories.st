tearDownRepositories
    super tearDownRepositories.
    Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Cache_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_NewCache_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_OverrideCache_Test_Repository' ifAbsent: [  ].
    MCRepositoryGroup default
        removeRepository: monticelloRepository;
        removeRepository: configurationRepository