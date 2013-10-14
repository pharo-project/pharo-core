testOriginalFie40Foo35FeauxLoad
    Metacello classic
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie40FooLoad value.
    ((Smalltalk at: #'MetacelloTestConfigurationOfProjectFie') project version: '3.5') load: 'Feaux'.
    self validateBlockOriginalFie4035FooFeuxLoad value