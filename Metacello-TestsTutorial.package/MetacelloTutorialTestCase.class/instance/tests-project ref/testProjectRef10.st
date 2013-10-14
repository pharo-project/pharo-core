testProjectRef10
    | project loadedPackages loader |
    project := self projectRefProject.
    loader := (project version: '1.0') load.
    loadedPackages := loader loadedPackages asArray.
    self assert: loadedPackages size = 6.
    self assert: (loadedPackages indexOf: 'Example-Core-anon.14') > 0.
    self assert: (loadedPackages indexOf: 'Example-Tests-anon.3') > (loadedPackages indexOf: 'Example-Core-anon.14').
    self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') > (loadedPackages indexOf: 'Example-Core-anon.14').
    self
        assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') > (loadedPackages indexOf: 'Example-AddOn-anon.1').
    self
        assert:
            (loadedPackages indexOf: 'Example-AddOnTests-anon.1') > (loadedPackages indexOf: 'Example-Tests-anon.11').
    self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > (loadedPackages indexOf: 'Example-Core-anon.14').
    self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > (loadedPackages indexOf: 'Example-Tests-anon.3').
    self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > (loadedPackages indexOf: 'Example-AddOn-anon.1').
    self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > (loadedPackages indexOf: 'Example-AddOnTests-anon.1').
    self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') > (loadedPackages indexOf: 'Project-Core-anon.1')