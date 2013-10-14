validateImageBlockFilter
  | baselineList configurationList projectList |
  baselineList := Metacello image
    baseline: [ :spec | true ];
    list.
  self assert: baselineList size = 1.
  baselineList
    do: [ :spec | self assert: (#('BaselineOfGithubRefIV') includes: spec className) ].
  configurationList := Metacello image
    configuration: [ :spec | true ];
    list.
  self assert: configurationList size = 1.
  configurationList
    do: [ :spec | self assert: (#('ConfigurationOfExternal') includes: spec className) ].
  projectList := Metacello image
    project: [ :spec | true ];
    list.
  self assert: projectList size = 2.
  projectList
    do: [ :spec | 
      self
        assert:
          (#('ConfigurationOfExternal' 'BaselineOfGithubRefIV') includes: spec className) ]