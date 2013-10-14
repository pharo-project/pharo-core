testMissingClassName
    self
        handleExpectedValidationFailure: [ 
            Metacello new
                project: 'ExternalX';
                version: '0.9';
                repository: 'filetree://' , configurationDirectory fullName;
                silently;
                load ]