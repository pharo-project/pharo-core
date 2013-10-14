testIssue125AddSection
    "https://github.com/dalehenrich/metacello-work/issues/125"

    self create10BaselineIssue125.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'baseline100:') = self baseline10Issue125AddSourceString