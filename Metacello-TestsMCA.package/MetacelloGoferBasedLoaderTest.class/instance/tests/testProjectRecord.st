testProjectRecord
    | project version names loader |
    project := self project.
    version := project version: '3.0'.
    loader := version record.
    names := #('MetacelloTestConfigurationOfFoo' 'MetacelloTestConfigurationOfFoo' 'GoferFoo' 'GoferBar' 'GoferFaux' 'GoferBeau')
        asOrderedCollection.
    loader loadDirective
        packageDirectivesDo: [ :pkgDirective | 
            | name |
            name := pkgDirective packageName.
            self assert: (names indexOf: name) = 1.
            names remove: name ifAbsent: [ self assert: false ] ].
    self deny: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result')