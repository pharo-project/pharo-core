testIssue125ModifySection
    "https://github.com/dalehenrich/metacello-work/issues/125"

    self create10BaselineIssue125.
    MetacelloToolBox
        modifyVersion: '1.0-baseline'
        section: (MetacelloMethodSectionPath with: #(#'pharo1.0.x' #'pharo1.3.x'))
        for: self configurationName asString
        repository: nil
        requiredProjects: #()
        packages: #('GoferFoo')
        dependencies: {('GeauxFaux' -> #('GoferFoo'))}
        includes: #()
        files: #()
        repositories: {('GeauxFaux' -> #('http://www.squeaksource.com/CommandShell'))}
        preLoadDoIts: #()
        postLoadDoIts: #()
        supplyingAnswers: #()
        groups: #().
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'baseline100:') = self baseline10Issue125ModifySourceString