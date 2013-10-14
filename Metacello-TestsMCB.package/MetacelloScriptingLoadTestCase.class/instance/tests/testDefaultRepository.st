testDefaultRepository
    | projectSpec |
    Metacello new
        configuration: 'Sample';
        lock.
    projectSpec := Metacello registry
        configuration: 'Sample';
        list.
    self assert: projectSpec repositoryDescriptions asArray = {(MetacelloScriptEngine defaultRepositoryDescription)}