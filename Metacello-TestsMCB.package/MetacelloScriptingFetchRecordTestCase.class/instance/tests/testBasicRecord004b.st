testBasicRecord004b
    | result expected version |
    Gofer new
        repository: (Smalltalk at: #'Metacello_Configuration_Test_Repository');
        package: 'MetacelloTestConfigurationOfProjectFum';
        load.
    version := (Smalltalk at: #'MetacelloTestConfigurationOfProjectFum') project version: '1.0'.
    expected := version record loadDirective printString.
    result := (Metacello classic
        project: 'Fum';
        version: '1.0';
        className: 'MetacelloTestConfigurationOfProjectFum';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        record) printString.
    expected := version record loadDirective printString.
    self assert: expected = result