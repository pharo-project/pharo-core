testGetCollectionFilter
    | expected result |
    expected := #('GithubRefXII' 'GithubRefVIII' 'GithubRefXX' 'ExternalX' 'GithubRefIX' 'GithubRefV').
    result := Metacello new
        baseline: expected;
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        get.
    self assert: expected size = result size.
    result
        do: [ :project | self verify: project configuration class name asString loadedFrom: 'filetree://' , externalDirectory fullName ]