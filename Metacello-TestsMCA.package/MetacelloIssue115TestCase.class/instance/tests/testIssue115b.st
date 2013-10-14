testIssue115b
  "https://code.google.com/p/metacello/issues/detail?id=115"

  | project versionSpec version validations |
  gofer version: 'MetacelloTestConfigurationOfProjectIssue115-dkh.2'.
  gofer metacelloLoad.
  project := self project.
  self
    shouldnt: [ versionSpec := (version := project version: '1.1') spec ]
    raise: Error.
  validations := MetacelloToolBox validateConfiguration: self projectClass.
  self assert: validations size = 2.
  validations
    do: [ :validation | self assert: validation reasonCode == #'cannotResolveVersion' ]