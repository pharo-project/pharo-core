testLoadCollectionFilter
    Metacello new
        baseline: #('GithubRefIV');
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        load.
    self
        verify: 'External-Core'
        loadedFrom: 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'