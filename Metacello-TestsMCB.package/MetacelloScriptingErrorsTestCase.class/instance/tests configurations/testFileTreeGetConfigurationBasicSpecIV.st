testFileTreeGetConfigurationBasicSpecIV
    self
        should: [ 
            Metacello new
                baseline: 'ExternalIV';
                repository: 'filetree://' , configurationDirectory fullName;
                get ]
        raise: MetacelloPackageSpecResolutionError