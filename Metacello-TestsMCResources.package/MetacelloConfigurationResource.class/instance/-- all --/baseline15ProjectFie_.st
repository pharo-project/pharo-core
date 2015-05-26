baseline15ProjectFie: spec
    "self reset"

    "shouldn't affect anything ... the import: should only take effect on a load"

    <version: '1.5'>
    spec
        for: #'common'
        do: [ 
            spec
                configuration: 'Foo'
                    with: [ 
                            spec
                                className: 'MetacelloTestConfigurationOfFoo';
                                versionString: '3.5';
                                repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
                import: 'Foo' ]