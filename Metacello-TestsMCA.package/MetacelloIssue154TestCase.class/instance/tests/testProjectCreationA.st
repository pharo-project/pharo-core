testProjectCreationA
  "https://code.google.com/p/metacello/issues/detail?id=154"

  | project projectReferenceSpec projectSpec x |
  project := MetacelloMCProject new.
  projectSpec := project projectSpec
    name: 'MetacelloExample';
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
    className: 'ConfigurationOfMetacelloExample'
    packageName: 'MetacelloExample'
    fileName: 'ConfigurationOfMetacelloExample'.
  self
    assert:
      (x := projectReferenceSpec printString)
        =
          'spec blessing: #''baseline''.
spec project: ''MetacelloExample'' with: [


spec



className: ''ConfigurationOfMetacelloExample'';



versionString: ''1.0'';



repository: ''dictionary://Metacello_Configuration_Test_Repository'' ].'	"might need to cast these as versionSpecs so that the correct printing algorithms are used"