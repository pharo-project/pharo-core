testBasicRecord004a
    | result expected version |
    result := (Metacello classic
        project: 'Fum';
        version: '1.0';
        className: 'MetacelloTestConfigurationOfProjectFum';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        record) printString.
    version := (Smalltalk at: #'MetacelloTestConfigurationOfProjectFum') project version: '1.0'.
    expected := version record loadDirective printString.
    result := (Metacello classic
        project: 'Fum';
        version: '1.0';
        className: 'MetacelloTestConfigurationOfProjectFum';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        record) printString.
    self assert: expected = result