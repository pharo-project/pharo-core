testIssue100
    "Issue 100:	last block wins when there are duplicate attribute blocks"

    | project version repositoryDescriptions expected actual |
    project := self project.
    version := project version: '1.2.4-baseline'.
    self assert: version blessing = #'baseline'.
    expected := 'spec blessing: #''baseline''.
spec preLoadDoIt: #''preloadForCoreB''.'.
    actual := version spec printString.
    self assert: expected = actual.
    version := project version: '1.2.4'.
    self assert: version blessing = #'baseline'.
    expected := 'spec blessing: #''baseline''.
spec preLoadDoIt: #''preloadForCoreC''.'.
    actual := version spec printString.
    self assert: expected = actual