testFie35Foo40FeauxLoadLockNAllowEvenIfLockedUpgrade
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
  Metacello new
    project: 'Fie';
    className: 'MetacelloTestConfigurationOfProjectFie';
    version: '4.0';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    onLock: [ :ex | ex allow ];
    load: 'Feaux'