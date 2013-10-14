testProjectPackage
    | project version projectSpec |
    project := self project.
    version := project version: '1.1.4-baseline'.
    projectSpec := version packageNamed: 'Example Project' ifAbsent: [ self assert: false ].
   self assert: projectSpec className = 'MetacelloExampleProjectConfig'.
   self assert: projectSpec preLoadDoIt value = #preloadForProject.
   self assert: projectSpec postLoadDoIt value = #postloadForProject.
