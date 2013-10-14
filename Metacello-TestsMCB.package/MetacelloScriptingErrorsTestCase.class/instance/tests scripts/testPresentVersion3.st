testPresentVersion3
    self
        handleExpectedValidationFailure: [ 
            Metacello new
                baseline: 'ExternalX';
                version: '1.0';
                repository: 'filetree://' , externalDirectory fullName;
                silently;
                load ]
        reasonCode: #'invalidVersionString'