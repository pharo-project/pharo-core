testBasicFetch003
    | result expected |
    result := (Metacello new
        project: 'Foo';
        version: '3.0';
        className: 'MetacelloTestConfigurationOfFoo';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch: #('GoferBar' 'GoferFaux')) printString.
    expected := (((Smalltalk at: #'MetacelloTestConfigurationOfFoo') project version: '3.0')
        fetch: #('GoferBar' 'GoferFaux')) loadDirective printString.
    self assert: expected = result.
    result := (Metacello new
        project: 'Foo';
        version: '3.5';
        className: 'MetacelloTestConfigurationOfFoo';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch: #('GoferBeau')) printString.
    expected := (((Smalltalk at: #'MetacelloTestConfigurationOfFoo') project version: '3.5') fetch: #('GoferBeau'))
        loadDirective printString.
    self assert: expected = result