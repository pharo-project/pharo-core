test002new
    | wc |
    Metacello new
        project: 'Foo';
        version: '5.0';
        className: 'MetacelloTestConfigurationOfFoo';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: #('GoferBar' 'GoferFaux').
    Gofer new
        repository: monticelloRepository;
        version: 'GoferFaux-tg.33';
        load.	"The maual load of a package does not change the currentVersion recorded in the registry, so the net is no impact"
    Metacello new
        project: 'Fan';
        version: '2.0';
        className: 'MetacelloTestConfigurationOfFan';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    wc := (GoferPackageReference name: 'GoferBar') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBar-lr.1'.
    wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferBeau-dkh.55'.
    wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
    self assert: wc ancestry ancestors first name = 'GoferFaux-tg.34'	"GoferFaux-tg.33 in classic"