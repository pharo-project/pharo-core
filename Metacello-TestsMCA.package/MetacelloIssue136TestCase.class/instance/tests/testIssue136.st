testIssue136
  "https://code.google.com/p/metacello/issues/detail?id=136"

  | project projectReferenceProject configurationName projectBaseName projectSpec projectPackage |
  gofer version: 'MetacelloTestConfigurationOfProjectIssue136-dkh.1'.
  gofer metacelloLoad.
  project := self project.
  configurationName := 'MetacelloTestConfigurationOfProjectIssue136'.
  projectBaseName := 'Issue136'.
  projectReferenceProject := (MetacelloPlatform current
    globalNamed: configurationName asSymbol
    ifAbsent: [ self assert: false ]) project.
  projectPackage := projectReferenceProject projectPackage.
  projectPackage
    repository: 'dictionary://Metacello_Configuration_Test_Repository'.
  projectSpec := project projectSpec
    name: projectBaseName;
    className: configurationName;
    versionString: '1.0';
    projectPackage: projectPackage;
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    yourself.
  projectSpec load.
  projectReferenceProject := (MetacelloPlatform current
    globalNamed: configurationName asSymbol
    ifAbsent: [ self assert: false ]) project.
  projectPackage := projectReferenceProject projectPackage.
  projectPackage
    repository: 'dictionary://Metacello_Configuration_Test_Repository'.
  projectPackage file: 'MetacelloTestConfigurationOfProjectIssue136-dkh.2'.
  projectSpec := project projectSpec
    name: projectBaseName;
    className: configurationName;
    versionString: '1.1';
    projectPackage: projectPackage;
    repository: 'dictionary://Metacello_Configuration_Test_Repository';
    yourself.
  projectSpec load