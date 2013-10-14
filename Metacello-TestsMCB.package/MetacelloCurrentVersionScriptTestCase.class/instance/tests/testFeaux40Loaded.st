testFeaux40Loaded
    Metacello new
        project: 'Fum';
        className: 'MetacelloTestConfigurationOfFum';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Feaux'.
    self verify: 'GeauxFoo' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
    self verify: 'GeauxBar' loadedFrom: 'dictionary://Metacello_Gofer_Test_Repository'.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfFum'.
            '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}.
            {'MetacelloTestConfigurationOfFum'.
            '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}}