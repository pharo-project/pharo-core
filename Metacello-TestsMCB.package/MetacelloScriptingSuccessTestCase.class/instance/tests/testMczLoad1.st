testMczLoad1
    Metacello new
        project: 'MetacelloExample';
        className: 'ConfigurationOfMetacelloExample';
        version: '1.0';
        repository: 'dictionary://Metacello_MczConfiguration_Test_Repository';
        load.
    self
        validateExpectedConfigurationClassName: 'ConfigurationOfMetacelloExample'
        expectedConfigurationVersion: '1.0'
        expectedConfigurationRepository: 'dictionary://Metacello_MczConfiguration_Test_Repository'
        expectedBaselineClassName: nil
        expectedBaselineVersion: nil
        expectedBaselineRepository: nil