validateBlockFie35FooFeuxLoad
    ^ [ 
    self validateBlockOriginalFie35FooFeuxLoad value.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfProjectFie'.
            '3.5'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}.
            {'MetacelloTestConfigurationOfFoo'.
            '3.5'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}.
            {'MetacelloTestConfigurationOfFeaux'.
            '4.0'.
            'dictionary://Metacello_Configuration_Test_Repository'.
            nil.
            nil.
            nil}} ]