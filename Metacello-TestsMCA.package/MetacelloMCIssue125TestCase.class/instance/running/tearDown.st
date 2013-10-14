tearDown
    | aGofer |
    super tearDown.
    aGofer := Gofer new.
    self tearDownPackageNames
        do: [ :pName | 
            (self hasPackage: pName)
                ifTrue: [ aGofer package: pName ] ].
    aGofer references notEmpty
        ifTrue: [ aGofer metacelloUnload ].
    Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [  ]