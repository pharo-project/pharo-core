testBasicLock
    | projectSpec |
    Metacello new
        configuration: 'ExternalX';
        version: '0.9.0';
        lock.
    self
        assert:
            (Metacello image
                configuration: 'ExternalX';
                list) isEmpty.
    projectSpec := Metacello registry
        configuration: 'ExternalX';
        list.
    self assert: projectSpec registration locked