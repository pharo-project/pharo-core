testBasicRecord001
    | result expected |
    result := (Metacello new
        project: 'Foo';
        version: '3.0';
        className: 'MetacelloTestConfigurationOfFoo';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        record: #('GoferBar' 'GoferFaux')) printString.
    expected := (((Smalltalk at: #'MetacelloTestConfigurationOfFoo') project version: '3.0')
        record: #('GoferBar' 'GoferFaux')) loadDirective printString.
    self assert: expected = result.
    result := (Metacello new
        project: 'Fan';
        version: '2.0';
        className: 'MetacelloTestConfigurationOfFan';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        record: 'Foo') printString.
    expected := (((Smalltalk at: #'MetacelloTestConfigurationOfFan') project version: '2.0') record: #('Foo'))
        loadDirective printString.
    self assert: expected = result