tearDownRepositories
    super tearDownRepositories.
    Smalltalk removeKey: #'Metacello_External_Test_Repository' ifAbsent: [  ]