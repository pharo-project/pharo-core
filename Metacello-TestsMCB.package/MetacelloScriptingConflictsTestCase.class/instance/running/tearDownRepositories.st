tearDownRepositories
    super tearDownRepositories.
    Smalltalk removeKey: #'Metacello_Conflict_Test_Repository' ifAbsent: [  ]