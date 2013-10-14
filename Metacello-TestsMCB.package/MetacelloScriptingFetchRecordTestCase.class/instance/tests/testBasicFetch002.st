testBasicFetch002
    | result expected |
    result := (Metacello new
        project: 'Foo';
        version: '5.0';
        className: 'MetacelloTestConfigurationOfFoo';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch: #('GoferBar' 'GoferFaux')) printString.
    expected := (((Smalltalk at: #'MetacelloTestConfigurationOfFoo') project version: '5.0')
        fetch: #('GoferBar' 'GoferFaux')) loadDirective printString.
    self assert: expected = result.
    result := (Metacello new
        project: 'Fan';
        version: '2.0';
        className: 'MetacelloTestConfigurationOfFan';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch: 'Foo') printString.
    expected := (((Smalltalk at: #'MetacelloTestConfigurationOfFan') project version: '2.0') fetch: #('Foo'))
        loadDirective printString.
    self assert: expected = result