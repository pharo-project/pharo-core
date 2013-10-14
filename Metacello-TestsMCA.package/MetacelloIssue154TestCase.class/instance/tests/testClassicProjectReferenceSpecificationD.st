testClassicProjectReferenceSpecificationD
  "https://code.google.com/p/metacello/issues/detail?id=154"

  | project versionSpec validations x |
  gofer version: 'ConfigurationOfMetacelloProjectIssue154-dkh.1'.
  gofer metacelloLoad.
  project := self project.
  versionSpec := (project version: '1.3-baseline') spec.
  validations := MetacelloToolBox validateConfiguration: self projectClass.
  self assert: validations size = 1.
  validations
    detect: [ :validation | validation reasonCode == #'onlyBaselineVersion' ]
    ifNone: [ self assert: false ].
  self
    assertMetacelloExampleProjectReferenceSpec:
      (versionSpec packages
        packageNamed: 'MetacelloExample'
        ifAbsent: [ self assert: false ])
    projectName: 'MetacelloExample'
    className: 'ConfigurationOfMetacelloExample'
    packageName: 'MetacelloExampleTestConfigurationIssue154.gemstone'
    fileName: 'MetacelloExampleTestConfigurationIssue154.gemstone'.
  self
    assert:
      (x := versionSpec printString)
        =
          'spec blessing: #''baseline''.
spec project: ''MetacelloExample'' with: [


spec



className: ''ConfigurationOfMetacelloExample'';



versionString: ''1.0'';



 projectPackage: [ 
                                            spec
                                                name: ''MetacelloExampleTestConfigurationIssue154''; <<<<--------------------- not sure what should be done here, since the branch is not really correct ... if branch legal then if is okay to collapse the file out ... same as 1.1 except file is specified instead of name .... but they are equivalent
                                                file: ''MetacelloExampleTestConfigurationIssue154.gemstone'';
                                                repository: ''dictionary://Metacello_Configuration_Test_Repository'' ] ].'