testFie35Foo40FeauxLoadLockNAllowUpgradeError
  Metacello new
    project: 'Foo';
    className: 'MetacelloTestConfigurationOfFoo';
    version: '3.5';
    lock.
  Metacello new
    project: 'Fie';
    className: 'MetacelloTestConfigurationOfProjectFie';
    version: '3.5';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    load: 'Foo'.
  self validateBlockFie35FooLoad value.
  self
    should: [ 
      Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        onUpgrade: [ :ex | ex allow ];
        load: 'Feaux' ]
    raise: Warning