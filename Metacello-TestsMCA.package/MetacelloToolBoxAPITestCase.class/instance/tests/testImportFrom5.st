testImportFrom5
    "#platform4 is left untouched ..."

    self create14Version.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'baseline14:') asString = self baseline14SourceString.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'version14:') asString = self version14SourceString