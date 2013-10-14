testFetchCacheRepository
    | cacheRepository |
    Metacello new
        project: 'Fum';
        className: 'MetacelloTestConfigurationOfProjectFum';
        version: '1.0';
        cacheRepository: 'dictionary://Metacello_Cache_Test_Repository';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch.
    cacheRepository := Smalltalk at: #'Metacello_Cache_Test_Repository'.
    #('GoferBar-lr.1' 'GoferBeau-dkh.55' 'GoferFaux-tg.34' 'GoferFoo-lr.2' 'MetacelloTestConfigurationOfFoo-dkh.1' 'MetacelloTestConfigurationOfProjectFie-dkh.1')
        do: [ :file | self assert: (cacheRepository includesVersionNamed: file) ]