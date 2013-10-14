tearDown
    super tearDown.
    Smalltalk removeKey: #'Metacello_Configuration_Test_POST_DoIt_Result' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Configuration_Test_DoIt_Result' ifAbsent: [  ]