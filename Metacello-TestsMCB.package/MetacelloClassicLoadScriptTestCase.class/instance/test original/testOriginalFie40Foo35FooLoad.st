testOriginalFie40Foo35FooLoad
    Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Foo'.
    self validateBlockFie40FooLoad value.
    ((Smalltalk at: #'MetacelloTestConfigurationOfProjectFie') project version: '3.5') load: 'Foo'.
    self validateBlockOriginalFie40FooLoad value