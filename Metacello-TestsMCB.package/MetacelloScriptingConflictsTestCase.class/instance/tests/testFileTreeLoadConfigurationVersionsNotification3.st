testFileTreeLoadConfigurationVersionsNotification3
  "MetacelloSkippedProjectSpecLoadConflictsNotification not handled ... default action is to use existingRegistration"

  self testFileTreeLoadConfigurationVersions.
  Metacello new
    configuration: 'ExternalX';
    version: '0.9.0';
    repository: 'filetree://' , configurationDirectory fullName;
    silently;
    load.
  self
    validateExpectedConfigurationClassName: 'ConfigurationOfExternalX'
    expectedConfigurationVersion: '0.9.0'
    expectedConfigurationRepository:
      'filetree://' , configurationDirectory fullName
    expectedBaselineClassName: nil
    expectedBaselineVersion: nil
    expectedBaselineRepository: nil