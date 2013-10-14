testGetNLoad
  [ 
  Transcript
    cr;
    show: 'GetNLoad'.
  Metacello new
    baseline: 'ExternalX';
    repository: 'filetree://' , externalDirectory fullName;
    get.
  Metacello registry
    baseline: 'ExternalX';
    load.
  self
    validateExpectedConfigurationClassName: nil
    expectedConfigurationVersion: nil
    expectedConfigurationRepository: nil
    expectedBaselineClassName: 'BaselineOfExternalX'
    expectedBaselineVersion: 'baseline'
    expectedBaselineRepository: 'filetree://' , externalDirectory fullName ]
    on: Warning
    do: [ :ex | 
      Transcript
        cr;
        show: ex description.
      ex resume ]