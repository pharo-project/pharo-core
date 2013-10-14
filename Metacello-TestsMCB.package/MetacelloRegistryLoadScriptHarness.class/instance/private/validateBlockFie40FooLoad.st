validateBlockFie40FooLoad
    ^ [ 
    self validateBlockOriginalFie40FooLoad value.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfProjectFie'.
            '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}.
            {'MetacelloTestConfigurationOfFoo'.
            '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}} ]