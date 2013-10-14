assertMetacelloExampleVersionSpec: versionSpec
    self
        assertMetacelloExampleProjectReferenceSpec:
            (versionSpec packages packageNamed: 'MetacelloExample' ifAbsent: [ self assert: false ])