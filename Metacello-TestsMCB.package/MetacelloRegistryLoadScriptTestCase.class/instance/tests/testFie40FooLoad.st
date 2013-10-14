testFie40FooLoad
    Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie40FooLoad value