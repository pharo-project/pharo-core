testIssue115CreateVersion
    self create10VersionIssue115.
    self
        assert:
            ((Smalltalk at: self configurationName) sourceCodeAt: #'version10:') = self version10Issue115CreateVersionSourceString