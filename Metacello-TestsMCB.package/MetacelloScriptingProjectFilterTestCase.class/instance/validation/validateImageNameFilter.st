validateImageNameFilter
  | spec |
  spec := Metacello image
    baseline: 'GithubRefIV';
    list.
  self assert: 'BaselineOfGithubRefIV' = spec className.
  spec := Metacello image
    configuration: 'External';
    list.
  self assert: 'ConfigurationOfExternal' = spec className.
  spec := Metacello image
    project: 'External';
    list.
  self assert: 'ConfigurationOfExternal' = spec className