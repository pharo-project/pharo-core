testFie35FooLoad
    Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '3.5';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie35FooLoad value