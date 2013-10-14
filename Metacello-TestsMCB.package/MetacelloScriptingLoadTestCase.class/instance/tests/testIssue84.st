testIssue84
    | loadDirective loaded |
    Gofer new
        repository: (Smalltalk at: #'Metacello_Config_Test_Repository');
        version: 'ConfigurationOfNestedIssue84-dkh.1';
        load.
    loadDirective := Metacello new
        configuration: 'Issue84';
        version: '1.0.0';
        repository: 'dictionary://Metacello_Config_Test_Repository';
        load.
    loaded := false.
    loadDirective
        packageDirectivesDo: [ :packageDirective | 
            packageDirective packageName = 'ConfigurationOfNestedIssue84'
                ifTrue: [ loaded := true ] ].
    self deny: loaded.
    loadDirective := Metacello classic
        configuration: 'Issue84';
        version: '1.0.0';
        repository: 'dictionary://Metacello_Config_Test_Repository';
        load.
    loaded := false.
    loadDirective
        packageDirectivesDo: [ :packageDirective | 
            packageDirective packageName = 'ConfigurationOfNestedIssue84'
                ifTrue: [ loaded := true ] ].
    self assert: loaded