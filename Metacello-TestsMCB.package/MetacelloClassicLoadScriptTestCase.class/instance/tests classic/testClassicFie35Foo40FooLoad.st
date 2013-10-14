testClassicFie35Foo40FooLoad
    Metacello classic
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '3.5';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie35FooLoad value.
    Metacello classic
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie40FooLoad value