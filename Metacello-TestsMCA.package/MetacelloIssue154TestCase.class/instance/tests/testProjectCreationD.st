testProjectCreationD
  "https://code.google.com/p/metacello/issues/detail?id=154"

  | project projectReferenceSpec projectSpec x |
  project := MetacelloMCProject new.
  projectSpec := project projectSpec
    name: 'MetacelloExample';
    className: 'MetacelloExampleConfigurationClass';
    file: 'MetacelloExampleConfigurationFile.gemstone';
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    yourself.
  projectReferenceSpec := project projectReferenceSpec
    name: 'MetacelloExample';
    projectReference: projectSpec;
    versionString: '1.0';
    yourself.
  self
    assertMetacelloExampleProjectReferenceSpec: projectReferenceSpec
    projectName: 'MetacelloExample'
    className: 'MetacelloExampleConfigurationClass'
    packageName: 'MetacelloExample'
    fileName: 'MetacelloExampleConfigurationFile.gemstone'.
  self
    assert:
      (x := projectReferenceSpec printString)
        =
          'spec blessing: #''baseline''.
spec project: ''MetacelloExample'' with: [


spec



className: ''MetacelloExampleConfigurationClass'';



versionString: ''1.0'';



 projectPackage: [ 
                                            spec
                                                name: ''MetacelloExampleConfigurationFile''; <<<<--------------------- not sure what should be done here, since the branch is not really correct ... if branch legal then if is okay to collapse the file out ... same as 1.1 except file is specified instead of name .... but they are equivalent
                                                file: ''MetacelloExampleConfigurationFile.gemstone'';
                                                repository: ''dictionary://Metacello_Configuration_Test_Repository'' ] ].'