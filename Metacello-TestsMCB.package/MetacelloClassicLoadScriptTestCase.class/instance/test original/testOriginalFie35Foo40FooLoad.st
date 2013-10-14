testOriginalFie35Foo40FooLoad
    Metacello classic
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '3.5';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie35FooLoad value.
    ((Smalltalk at: #'MetacelloTestConfigurationOfProjectFie') project version: '4.0') load: 'Foo'.
    self validateBlockOriginalFie40FooLoad value