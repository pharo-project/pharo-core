tearDown
    | aGofer |
    super tearDown.
    Smalltalk removeKey: self repositoryName ifAbsent: [  ].
    self tempRepositories do: [ :repo | MCRepositoryGroup default removeRepository: repo ].
    aGofer := Gofer new.
    self tearDownPackageNames
        do: [ :pName | 
            (self hasPackage: pName)
                ifTrue: [ aGofer package: pName ] ].
    aGofer references notEmpty
        ifTrue: [ aGofer metacelloUnload ]