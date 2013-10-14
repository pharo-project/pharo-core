testFileTreeGetBaseline
    self
        should: [ 
            Metacello new
                configuration: 'ExternalX';
                repository: 'filetree://' , externalDirectory fullName;
                get ]
        raise: MetacelloPackageSpecResolutionError