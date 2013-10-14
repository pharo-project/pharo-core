test003
    | version foo fan wc |
    gofer
        package: 'MetacelloTestConfigurationOfFan';
        package: 'MetacelloTestConfigurationOfFoo';
        load.
    fan := (Smalltalk at: #'MetacelloTestConfigurationOfFan') new project.
    foo := (Smalltalk at: #'MetacelloTestConfigurationOfFoo') new project.
    version := foo version: '5.0'.
    version load: #('GoferBar' 'GoferFaux').	"load later version of 1 package beyond the last version of foo 5.0"
    gofer
        version: 'GoferFaux-tg.35';
        load.
    version := fan version: '2.0'.
    version load: 'Foo'.
    wc := (GoferPackageReference name: 'GoferBar') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
    wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.55'.
    wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferFaux-tg.35'