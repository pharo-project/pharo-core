setUpRepositoryContents
    super setUpRepositoryContents.
    self
        setUpRepositoryContents: #('ConfigurationOfConflict-dkh.1' 'ConfigurationOfExternalX-dkh.2')
        sourceRepo: MetacelloScriptingResource current configurationRepository
        targetRepo: (MCFileTreeRepository new directory: configurationDirectory).
    Smalltalk at: #'Metacello_Conflict_Test_Repository' put: configurationRepository