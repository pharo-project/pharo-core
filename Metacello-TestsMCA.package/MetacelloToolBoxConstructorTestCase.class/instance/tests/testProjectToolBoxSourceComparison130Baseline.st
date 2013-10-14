testProjectToolBoxSourceComparison130Baseline
    | configurationName versionString |
    gofer repository: self configurationRepository.
    configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
    gofer package: configurationName.
    gofer load.
    versionString := '1.3.0-baseline'.
    self assertMethodSourceFor: configurationName isEqualAfterModifyingVersion: versionString