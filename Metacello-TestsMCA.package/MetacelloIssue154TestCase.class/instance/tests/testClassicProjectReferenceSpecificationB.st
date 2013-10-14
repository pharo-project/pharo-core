testClassicProjectReferenceSpecificationB
  "https://code.google.com/p/metacello/issues/detail?id=154"

  | project versionSpec validations x |
  gofer version: 'ConfigurationOfMetacelloProjectIssue154-dkh.1'.
  gofer metacelloLoad.
  project := self project.
  versionSpec := (project version: '1.1-baseline') spec.
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
    packageName: 'MetacelloExampleTestConfigurationIssue154'
    fileName: 'MetacelloExampleTestConfigurationIssue154'.
  self
    assert:
      (x := versionSpec printString)
        =
          'spec blessing: #''baseline''.
spec project: ''MetacelloExample'' with: [


spec



className: ''ConfigurationOfMetacelloExample'';



versionString: ''1.0'';



file: ''MetacelloExampleTestConfigurationIssue154'';



repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].'