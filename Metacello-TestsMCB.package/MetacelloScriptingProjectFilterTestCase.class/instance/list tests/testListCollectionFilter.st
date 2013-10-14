testListCollectionFilter
    | result expected |
    expected := #('GithubRefXII' 'GithubRefVIII' 'GithubRefXX' 'ExternalX' 'GithubRefIX' 'GithubRefV').
    result := (Metacello new
        baseline: expected;
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        list) collect: [ :each | each name ].
    self assert: result size = expected size.
    expected do: [ :name | self assert: (result includes: name) ]