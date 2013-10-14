testFie25Loadc
    self
        should: [ 
            Metacello new
                project: 'Fie';
                className: 'MetacelloTestConfigurationOfProjectFie';
                version: '2.5';
                repository: 'dictionary://Metacello_Configuration_Test_Repository';
                load: 'GoferBeau' ]
        raise: Error