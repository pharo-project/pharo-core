testVersionPreloadOverride
    | project expected version actual |
    project := self project.
    version := project version: '1.0.3-baseline'.
    expected := 'spec blessing: #''baseline''.
spec preLoadDoIt: #''alternatePreloadForCore''.
spec postLoadDoIt: #''postloadForCore:package:''.'.
    actual := version spec printString.
    self assert: expected = actual