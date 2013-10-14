testFetchIssue83
    Metacello new
        project: 'Fum';
        className: 'MetacelloTestConfigurationOfProjectFum';
        version: '1.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch.
    self
        assert:
            (Metacello registry
                project: [ :spec | spec className beginsWith: 'MetacelloTest' ];
                list) isEmpty