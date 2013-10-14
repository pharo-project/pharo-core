testFie40Foo35FeauxLoad
    Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie40FooLoad value.
    Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '3.5';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Feaux'.
    self validateBlockFie40FooFeux35FieLoad value