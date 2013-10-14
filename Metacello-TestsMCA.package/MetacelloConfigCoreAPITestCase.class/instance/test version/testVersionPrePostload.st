testVersionPrePostload
    | project expected version actual |
    project := self project.
    version := project version: '1.0.2-baseline'.
    expected := 'spec blessing: #''baseline''.
spec preLoadDoIt: #''preloadForCore''.
spec postLoadDoIt: #''postloadForCore:package:''.'.
    actual := version spec printString.
    self assert: expected = actual