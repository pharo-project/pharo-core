testFie35Foo40FeauxLoadLockError
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
    onWarning: [ :ex | self assert: false	"shouldn't trigger a Warning" ];
    load: 'Foo'.
  self validateBlockFie35FooLoad value.
  self
    should: [ 
      Metacello new
        project: 'Fie';
        className: 'MetacelloTestConfigurationOfProjectFie';
        version: '4.0';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        load: 'Feaux' ]
    raise: Warning