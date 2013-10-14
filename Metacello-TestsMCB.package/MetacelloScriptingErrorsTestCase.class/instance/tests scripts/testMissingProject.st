testMissingProject
    self
        should: [ 
            Metacello new
                className: 'ConfigurationExternalX';
                version: '0.9';
                repository: 'filetree://' , configurationDirectory fullName;
                silently;
                load ]
        raise: Error