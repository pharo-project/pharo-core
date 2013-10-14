validateBlockFie40FeauxLoad
    ^ [ 
    self validateBlockOriginalFie40FeauxLoad value.
    self
        validateProjects:
            {{'MetacelloTestConfigurationOfProjectFie'.
            '4.0'.
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