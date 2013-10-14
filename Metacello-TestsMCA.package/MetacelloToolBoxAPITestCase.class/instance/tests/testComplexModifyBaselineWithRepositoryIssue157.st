testComplexModifyBaselineWithRepositoryIssue157
    | x |
    self createComplex11Baseline.
    MetacelloToolBox
        modifyVersion: '1.1-baseline'
        section: #'common'
        for: self configurationName asString
        repository: nil
        requiredProjects: #()
        packages: #()
        dependencies: #()
        includes: #()
        files: #()
        repositories: {('GeauxFaux' -> #('http://www.squeaksource.com/CommandShell'))}
        preLoadDoIts: #()
        postLoadDoIts: #()
        supplyingAnswers: #()
        groups: #().
    self
        assert:
            (x := (Smalltalk at: self configurationName) sourceCodeAt: #'baseline11:') = self complexBaseline11SourceString3