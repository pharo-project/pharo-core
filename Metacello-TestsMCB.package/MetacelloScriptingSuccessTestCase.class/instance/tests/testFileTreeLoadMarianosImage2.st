testFileTreeLoadMarianosImage2
    Metacello new
        project: 'DifferentName';
        className: 'MarianosImage';
        version: '0.9.0';
        repository: 'filetree://' , configurationDirectory fullName;
        silently;
        load.
    self
        validateExpectedConfigurationClassName: 'MarianosImage'
        expectedConfigurationVersion: '0.9.0'
        expectedConfigurationRepository: 'filetree://' , configurationDirectory fullName
        expectedBaselineClassName: nil
        expectedBaselineVersion: nil
        expectedBaselineRepository: nil.
    self
        validateExpectedConfigurationClassName: nil
        expectedConfigurationVersion: nil
        expectedConfigurationRepository: nil
        expectedBaselineClassName: 'BaselineOfExternalX'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository: 'dictionary://Metacello_Configuration_Test_Repository'