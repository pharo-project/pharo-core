testProjectPackageRecord
    | project version loader |
    project := self project.
    version := project version: '1.1.4-baseline'.
    loader := version record.
    loader loadDirective
        versionDirectivesDo: [ :directive | 
            | versionSpec |
            (versionSpec := directive spec) ~~ nil
                ifTrue: [ 
                    versionSpec versionString = '1.1.4-baseline'
                        ifTrue: [ 
                            | projectSpec |
                            projectSpec := (versionSpec packageNamed: 'Example Project' ifAbsent: [ self assert: false ])
                                projectReference.
                            self assert: projectSpec file = projectSpec file ] ] ]