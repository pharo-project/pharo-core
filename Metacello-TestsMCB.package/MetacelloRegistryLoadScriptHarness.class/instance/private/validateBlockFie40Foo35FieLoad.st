validateBlockFie40Foo35FieLoad
    ^ [ 
    self validateBlockOriginalFie40FooLoad value.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfProjectFie'.
            '3.5'.
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