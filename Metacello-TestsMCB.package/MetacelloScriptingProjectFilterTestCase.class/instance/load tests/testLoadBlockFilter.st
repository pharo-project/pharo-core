testLoadBlockFilter
    Metacello new
        baseline: [ :projectSpec | projectSpec name = 'GithubRefIV' ];
        repository: 'filetree://' , externalDirectory fullName;
        silently;
        load.
    self
        verify: 'External-Core'
        loadedFrom: 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'