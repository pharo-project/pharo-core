testIssue87
    Metacello new
        configuration: 'ExternalXX';
        version: '0.9.0';
        repository: 'dictionary://Metacello_Config_Test_Repository';
        load.
    self
        should: [ 
            Metacello image
                baseline: 'External';
                get ]
        raise: MetacelloScriptGitHubDownloadNotification