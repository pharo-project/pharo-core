testFetchRepositoryOverrides
    | cacheRepository newCacheRepository |
    Metacello new
        project: 'Fum';
        className: 'MetacelloTestConfigurationOfProjectFum';
        version: '1.0';
        cacheRepository: 'dictionary://Metacello_Cache_Test_Repository';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch.
    cacheRepository := Smalltalk at: #'Metacello_Cache_Test_Repository'.
    #('GoferBar-lr.1' 'GoferBeau-dkh.55' 'GoferFaux-tg.34' 'GoferFoo-lr.2' 'MetacelloTestConfigurationOfFoo-dkh.1' 'MetacelloTestConfigurationOfProjectFie-dkh.1')
        do: [ :file | self assert: (cacheRepository includesVersionNamed: file) ].
    Smalltalk at: #'Metacello_OverrideCache_Test_Repository' put: (Smalltalk at: #'Metacello_Cache_Test_Repository').
    Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Cache_Test_Repository' ifAbsent: [  ].
    Gofer new
        package: 'MetacelloTestConfigurationOfFoo';
        package: 'MetacelloTestConfigurationOfProjectFie';
        unload.
    Metacello new
        project: 'Fum';
        className: 'MetacelloTestConfigurationOfProjectFum';
        version: '1.0';
        cacheRepository: 'dictionary://Metacello_NewCache_Test_Repository';
        repositoryOverrides: #('dictionary://Metacello_OverrideCache_Test_Repository');
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        fetch.
    newCacheRepository := Smalltalk at: #'Metacello_NewCache_Test_Repository'.
    #('GoferBar-lr.1' 'GoferBeau-dkh.55' 'GoferFaux-tg.34' 'GoferFoo-lr.2' 'MetacelloTestConfigurationOfFoo-dkh.1' 'MetacelloTestConfigurationOfProjectFie-dkh.1')
        do: [ :file | self assert: (newCacheRepository includesVersionNamed: file) ]