testFie25Loadb
    self
        should: [ 
            Metacello new
                project: 'Fie';
                className: 'MetacelloTestConfigurationOfProjectFie';
                version: '2.5';
                repository: 'dictionary://Metacello_Configuration_Test_Repository';
                load: '1' ]
        raise: Error