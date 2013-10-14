testOriginalFie35Foo40FeauxLoad
    Metacello classic
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '3.5';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie35FooLoad value.
    ((Smalltalk at: #'MetacelloTestConfigurationOfProjectFie') project version: '4.0') load: 'Feaux'.
    self validateBlockOriginalFie40FeauxLoad value