validateRegistryBlockFilter
  | baselineList configurationList projectList |
  baselineList := Metacello registry
    baseline: [ :spec | true ];
    list.
  self assert: baselineList size = 1.
  baselineList
    do: [ :spec | self assert: (#('BaselineOfGithubRefIV') includes: spec className) ].
  configurationList := Metacello registry
    configuration: [ :spec | true ];
    list.
  self assert: configurationList size = 2.
  configurationList
    do: [ :spec | 
      self
        assert:
          (#('ConfigurationOfExternal' 'ConfigurationOfIssue32') includes: spec className) ].
  projectList := Metacello registry
    project: [ :spec | true ];
    list.
  self assert: projectList size = 3.
  projectList
    do: [ :spec | 
      self
        assert:
          (#('BaselineOfGithubRefIV' 'ConfigurationOfIssue32' 'ConfigurationOfExternal')
            includes: spec className) ]