testFileTreeLoadBaseline1
  Transcript
    cr;
    show: '----->>>>>testFileTreeLoadBaseline1[1]'.
  Metacello new
    baseline: 'ExternalX';
    repository: 'filetree://' , externalDirectory fullName;
    silently;
    load.
  Transcript
    cr;
    show: '----->>>>>testFileTreeLoadBaseline1[2]'.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfExternalX'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository: 'filetree://' , externalDirectory fullName.
  Transcript
    cr;
    show: '----->>>>>testFileTreeLoadBaseline1[3]'