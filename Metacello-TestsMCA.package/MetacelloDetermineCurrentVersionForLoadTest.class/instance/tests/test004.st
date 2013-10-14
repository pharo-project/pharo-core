test004
    | version foo fan wc |
    gofer
        package: 'MetacelloTestConfigurationOfFan';
        package: 'MetacelloTestConfigurationOfFoo';
        load.
    fan := (Smalltalk at: #'MetacelloTestConfigurationOfFan') new project.
    foo := (Smalltalk at: #'MetacelloTestConfigurationOfFoo') new project.
    version := foo version: '5.0'.
    version load: #('GoferBar' 'GoferFaux').
    version := fan version: '2.0'.
    version load: 'Far'.
    wc := (GoferPackageReference name: 'GoferBar') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
    wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.55'.
    wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferFaux-tg.34'