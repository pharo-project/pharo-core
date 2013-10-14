testGetBlockFilter
    | result expected |
    expected := #('GithubRefXII' 'GithubRefVIII' 'GithubRefXX' 'ExternalX' 'GithubRefIX' 'GithubRefV' 'GithubRefVII' 'GithubRefIV' 'GithubRefXIII' 'GithubRefVI' 'GithubRefXI').
    result := Metacello new
        baseline: [ :projectSpec | true ];
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        get.
    self assert: expected size = result size.
    result
        do: [ :project | self verify: project configuration class name asString loadedFrom: 'filetree://' , externalDirectory fullName ]