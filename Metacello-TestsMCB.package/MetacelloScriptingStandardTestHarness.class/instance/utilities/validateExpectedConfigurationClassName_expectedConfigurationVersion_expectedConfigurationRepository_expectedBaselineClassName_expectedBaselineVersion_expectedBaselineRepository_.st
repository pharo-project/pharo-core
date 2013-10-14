validateExpectedConfigurationClassName: expectedConfigurationClassName expectedConfigurationVersion: expectedConfigurationVersion expectedConfigurationRepository: expectedConfigurationRepository expectedBaselineClassName: expectedBaselineClassName expectedBaselineVersion: expectedBaselineVersion expectedBaselineRepository: expectedBaselineRepository
  Transcript
    cr;
    show:
        'expectedConfigurationClassName: ' , expectedConfigurationClassName printString
            , ' expectedConfigurationVersion: '
            , expectedConfigurationVersion printString
            , ' expectedConfigurationRepository: '
            , expectedConfigurationRepository printString
            , ' expectedBaselineClassName: '
            , expectedBaselineClassName printString
            , ' expectedBaselineVersion: ' , expectedBaselineVersion printString
            , ' expectedBaselineRepository: '
            , expectedBaselineRepository printString.
  MetacelloProjectRegistration registry configurationRegistry
    at: expectedConfigurationClassName
    ifPresent: [ :existing | 
      | spec x |
      spec := existing configurationProjectSpec.
      Transcript
        cr;
        show: 'configuration [1]'.
      self
        assert: (x := spec version versionString) = expectedConfigurationVersion.
      Transcript
        cr;
        show: 'configuration [2]'.
      self
        assert:
          (spec repositoryDescriptions includes: expectedConfigurationRepository).
      Transcript
        cr;
        show: 'configuration [3]' ]
    ifAbsent: [ 
      Transcript
        cr;
        show: 'configuration [4]'.
      self assert: expectedConfigurationVersion == nil.
      Transcript
        cr;
        show: 'configuration [5]' ].
  MetacelloProjectRegistration registry baselineRegistry
    at: expectedBaselineClassName
    ifPresent: [ :existing | 
      | spec |
      spec := existing baselineProjectSpec.
      Transcript
        cr;
        show: 'baseline [1]'.
      self assert: spec versionString = expectedBaselineVersion.
      Transcript
        cr;
        show: 'baseline [2]'.
      self
        assert:
          (spec repositoryDescriptions includes: expectedBaselineRepository).
      Transcript
        cr;
        show: 'baseline [3]' ]
    ifAbsent: [ 
      Transcript
        cr;
        show: 'baseline [4]'.
      self assert: expectedBaselineVersion == nil.
      Transcript
        cr;
        show: 'baseline [5]' ]