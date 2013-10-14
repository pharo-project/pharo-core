validateRegistryNameFilter
  | spec |
  spec := Metacello registry
    baseline: 'GithubRefIV';
    list.
  self assert: 'BaselineOfGithubRefIV' = spec className.
  spec := Metacello registry
    configuration: 'Issue32';
    list.
  self assert: 'ConfigurationOfIssue32' = spec className.
  spec := Metacello registry
    project: 'Issue32';
    list.
  self assert: 'ConfigurationOfIssue32' = spec className