validateImageCollectionFilter
  | baselineList configurationList projectList |
  baselineList := Metacello image
    baseline: #('Issue32' 'External' 'GithubRefIV');
    list.
  self assert: baselineList size = 1.
  baselineList
    do: [ :spec | self assert: (#('BaselineOfGithubRefIV') includes: spec className) ].
  configurationList := Metacello image
    configuration: #('Issue32' 'External' 'GithubRefIV');
    list.
  self assert: configurationList size = 1.
  configurationList
    do: [ :spec | self assert: (#('ConfigurationOfExternal') includes: spec className) ].
  projectList := Metacello image
    project: #('Issue32' 'External' 'GithubRefIV');
    list.
  self assert: projectList size = 2.
  projectList
    do: [ :spec | 
      self
        assert:
          (#('ConfigurationOfExternal' 'BaselineOfGithubRefIV') includes: spec className) ]