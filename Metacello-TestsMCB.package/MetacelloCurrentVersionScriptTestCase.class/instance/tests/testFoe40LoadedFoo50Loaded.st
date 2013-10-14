testFoe40LoadedFoo50Loaded
    Metacello new
        project: 'Foo';
        className: 'MetacelloTestConfigurationOfFoo';
        version: '5.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load.
    self verify: 'GoferFoo' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
    self verify: 'GoferBar' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
    self verify: 'GoferFaux' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
    self verify: 'GoferBeau' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfFoo'.
            '5.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}}