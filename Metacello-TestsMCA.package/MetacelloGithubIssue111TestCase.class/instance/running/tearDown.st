tearDown
    | aGofer |
    super tearDown.
    aGofer := Gofer new.
    self tearDownPackageNames
        do: [ :pName | 
            (self hasPackage: pName)
                ifTrue: [ aGofer package: pName ] ].
    aGofer references notEmpty
        ifTrue: [ aGofer metacelloUnload ]