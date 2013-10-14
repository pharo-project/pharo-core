testProjectPackageWith
    | project version projectSpec |
    project := self project.
    version := project version: '1.1.6-baseline'.
    projectSpec := version packageNamed: 'Example Project' ifAbsent: [ self assert: false ].
    self assert: projectSpec className = 'MetacelloExampleProjectConfig'.
    self assert: projectSpec preLoadDoIt value = #'alternatePreloadForCore'.
    self assert: projectSpec postLoadDoIt value = #'postloadForProject'