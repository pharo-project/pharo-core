testFileTreeLoadBaseline2
  Transcript
    cr;
    show: '----->>>>>testFileTreeLoadBaseline2'.
  Metacello new
    baseline: 'ExternalX';
    repository: 'filetree://' , externalDirectory fullName;
    get.
  Metacello new
    baseline: 'ExternalX';
    repository: 'filetree://' , externalDirectory fullName;
    silently;
    load.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfExternalX'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository: 'filetree://' , externalDirectory fullName