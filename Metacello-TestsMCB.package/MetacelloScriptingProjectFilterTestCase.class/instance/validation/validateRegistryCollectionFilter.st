validateRegistryCollectionFilter
  | baselineList configurationList projectList |
  baselineList := Metacello registry
    baseline: #('Issue32' 'External' 'GithubRefIV');
    list.
  self assert: baselineList size = 1.
  baselineList
    do: [ :spec | self assert: (#('BaselineOfGithubRefIV') includes: spec className) ].
  configurationList := Metacello registry
    configuration: #('Issue32' 'External' 'GithubRefIV');
    list.
  self assert: configurationList size = 2.
  configurationList
    do: [ :spec | 
      self
        assert:
          (#('ConfigurationOfIssue32' 'ConfigurationOfExternal') includes: spec className) ].
  projectList := Metacello registry
    project: #('Issue32' 'External' 'GithubRefIV');
    list.
  self assert: projectList size = 3.
  projectList
    do: [ :spec | 
      self
        assert:
          (#('ConfigurationOfIssue32' 'BaselineOfIssue32' 'ConfigurationOfExternal' 'BaselineOfGithubRefIV')
            includes: spec className) ]