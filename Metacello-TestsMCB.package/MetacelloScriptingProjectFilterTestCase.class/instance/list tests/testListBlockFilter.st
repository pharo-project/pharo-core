testListBlockFilter
    | result expected |
    expected := #('GithubRefXII' 'GithubRefVIII' 'GithubRefXX' 'ExternalX' 'GithubRefIX' 'GithubRefV' 'GithubRefVII' 'GithubRefIV' 'GithubRefXIII' 'GithubRefVI' 'GithubRefXI').
    result := (Metacello new
        baseline: [ :projectSpec | true ];
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        list) collect: [ :each | each name ].
    self assert: result size = expected size.
    expected do: [ :name | self assert: (result includes: name) ]